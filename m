Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A765EB48F8
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 11:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFu/C7cAwW9S7RoLbtb14gsSw1AI2d2GvkxXproxBdQ=; b=qwY2Xuutkib1ik
	Q8FWI+DPugnZUR4NuaeFHcsbt0A26qzQMDTJl33GWRgN0ZUYQHN4pI/Gh3URHwZDQoGPOrkqKmFgo
	sZAE+r43jFAp0Gkz2NBQwJlLWJ7wAsunj+p9AXHKZGvKQPyvkZ9eYAuTn9cIeRxb/iJfSvUOF9/Cn
	kKhg7R/KfeBMXB9X3cKpj6R0spffPmcVUOOa8vXsJuTLvtk1l+GNv3dt3JBNih3k/ctlTV6HM5zi1
	m++A8Y9FdVkXNrBX6xTsX1fi4z++fgbIlgQD0pNCclWskBDGh53vThWOZkoNvWCvjk03EPITWeu/9
	EHE7fcmKCGw0pPTSlkjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUo5-00000001zcC-3qnl;
	Thu, 12 Feb 2026 11:24:26 +0000
Received: from sender4-op-o15.zoho.com ([136.143.188.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUo3-00000001zbp-0MGc;
	Thu, 12 Feb 2026 11:24:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1770895450; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ciM/MCKewRmR3bpICPa2OinU9RB2ElstD1FLBBLLLfT3Zn1YWeN3dnJ2WJNgbLjboHgBrO8Snftjgj5nas9lAhH8hs2Mw8gWqxsGvW6mrhTcQNpXNlLXGmOHMv/4/cg4Jzv9arFaHRKJPsWxdD2ZvLpEUWlD3OUMmNS8aky+9+M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1770895450; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=aF3qO+3sk8KCbgBGOu+WadDm4gK00VEQqM6dxzce1CQ=; 
	b=Bpznyr1Ce/65abpW4ea9rNZ+n5wf8SPKFQcKbaItC44rTuLXkticjBfXdSnqDhW0arIS4vi0+PdsvxCclLD7hmj7w4J+PfOA8Mt6gGCZ0BPLUdXfY6hAjOVdbYE0vZory1abzWOid2FeZqwzmcvpq2cZuRM7JCgnAOn7LNVIU6M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ziyao.cc;
	spf=pass  smtp.mailfrom=me@ziyao.cc;
	dmarc=pass header.from=<me@ziyao.cc>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1770895450;
	s=zmail; d=ziyao.cc; i=me@ziyao.cc;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=aF3qO+3sk8KCbgBGOu+WadDm4gK00VEQqM6dxzce1CQ=;
	b=Dnzo+cx4JVdOzyJ/jbd+Q2XJX4i+Ojct3KAPLJSuX3Yd9ZSmj4quJVrY0hXpBSA/
	jDA6LbuAA2RbV0JfoNxI1JIb4zTBxzHGztYDAeIHKvyUzA6x8V85qY3g8PRhSa89Tpu
	/P1Lyf3ZlzKzK7b/iL++/uhyBSCxdEgErpo6z4Ak=
Received: by mx.zohomail.com with SMTPS id 1770895448118306.0552867056007;
	Thu, 12 Feb 2026 03:24:08 -0800 (PST)
Date: Thu, 12 Feb 2026 11:24:00 +0000
From: Yao Zi <me@ziyao.cc>
To: Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>
Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] phy: k1-usb: add disconnect function support
Message-ID: <aY24UOvYsnh_7ZCO@pie>
References: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
 <20260212-11-k3-usb2-phy-v1-2-43578592405d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260212-11-k3-usb2-phy-v1-2-43578592405d@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_032423_289799_75A1C18F 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Feb 12, 2026 at 09:38:55AM +0800, Yixun Lan wrote:
> A disconnect status BIT of USB2 PHY need to be cleared, otherwise
> it will fail to work properly during next connection when devices
> connect to roothub directly.

This sounds like a bug. Does it affect K1 SoC as well? If so, I think
it deserves a Fixes tag and backporting.

> Signed-off-by: Yixun Lan <dlan@kernel.org>

Best regards,
Yao Zi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
