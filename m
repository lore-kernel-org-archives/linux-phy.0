Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD72DC021A7
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 10:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dJERQ9AJWkalFMjv3CTVa7iTagz3BQKiy8K4KANFr8=; b=zHULvnTkbUrfM+
	KercyF7VIg17bNK4aBEzm76hFQTdMQhYkLfpHDzGyP1Y0mDYBGE8X0sroAZZ061DevR6/EHlmXc89
	pWSgZQLPpElRTXOWzFjZDE5w1yd0hC07QsaWf7s4d7CxfwVWJP6vCPmldfLmrJ6lZ7f00FHLilAlk
	ONcANtdA4AHDgUuBXLHcUCkJnhhL9jiZhkBnQNWsUJSJRSpUG7xgHkdUHIMvv0TJ/LGI5grCfezG1
	Z9uZ/diqPbXYiYmPDuUX111b9p9gBQjmpws6oUcZ7ogo1eyZbO6gx57ekiEmANVwHWhd9tNEaaiLS
	XHE4Wx3+33S0KbfyEw2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjykk-00000004AuR-22tK;
	Mon, 17 Feb 2025 10:53:30 +0000
Received: from mail-m16.yeah.net ([220.197.32.16])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjyAs-00000004573-21fG;
	Mon, 17 Feb 2025 10:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=yQZncXsJ08w6dn/CQGrI9m/CtWBS9ZgdPyo1uxiw8q0=;
	b=S8LWbg0KmjlKxqeavmtEOa0jvDw8mdjl6dxM6NqrBFnjaVjyyZne20ehuDXVcc
	FaE33ud6RKBqUTurRhCoD8l8w/xTQFEg1SyiXSPVJau2uyNGSV3EH7T9vMpIPLtm
	Qsgi+qMtM10EVC1iFDh10iSuCbEYnh+l9HU7DVFz5m9hY=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgD3SshDDLNnYyAUCQ--.17238S3;
	Mon, 17 Feb 2025 18:15:33 +0800 (CST)
Date: Mon, 17 Feb 2025 18:15:31 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, jun.li@nxp.com,
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v11 2/3] arm64: dts: imx95: add usb3 related nodes
Message-ID: <Z7MMQ3bqIJ9nFqpl@dragon>
References: <20241204050907.1081781-1-xu.yang_2@nxp.com>
 <20241204050907.1081781-2-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204050907.1081781-2-xu.yang_2@nxp.com>
X-CM-TRANSID: M88vCgD3SshDDLNnYyAUCQ--.17238S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUVMmhUUUUU
X-Originating-IP: [114.218.218.231]
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCQ32ZWey5vCopgAAsa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_021626_839315_083E4053 
X-CRM114-Status: UNSURE (   5.28  )
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

On Wed, Dec 04, 2024 at 01:09:06PM +0800, Xu Yang wrote:
> Add usb3 phy and controller nodes for imx95.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Applied 2/3 and 3/3, thanks!


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
