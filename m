Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA380C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:16:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A5C8615A4
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:16:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7A5C8615A4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBfLwENE7PFtmrnx5Cx/iBPDA29sJ4rwJ0DwPsIMKv4=; b=UGKPbNI3PMgJY9
	Uh7Fb0cZVzIu5m2e+fOt84/79fzsFS/VHzSbmNc6Zri7xllOIB6HBVyqPt8vnlQA1NSRAV6m8A/xI
	sMwJZC8r3zUYvBM6zp3iJY2+mE4V8OppHs4yC9dYt5Wcnxbg8U3gzxl6lUT61vx0fNDgF7FByG/Ir
	JvXUHau1prJjn3zFVnHEUKNKnrSkBP23X93KoeXvfIMOh5nZwczGpyHv68N7u8Dstss3dbYKae4dO
	CR9v4EFNt7F57O32SQsbYjnKbKtApzW69B9vmOKIGZ5cCQaGrCtpiGySF6CxrmMqErnI1QHBvUl8z
	XEdHg7SkI++sTXg+WFGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWDiB-00H1TY-QA; Fri, 01 Oct 2021 08:16:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWDei-00GzjH-IN
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 08:12:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A9786615A4;
 Fri,  1 Oct 2021 08:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633075951;
 bh=4iD8lC8KJ0MVZhs97JJ08xmNkfcRSjGl6FLqVIbz6kw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Paysoc6WYJy5j/CQ24zPFNgWVk37SRBwpJtYUPW1LiEg+aiFD5fhjTTUTjhy6l5f4
 y2ImnoUiJpC3wZlsuXZzW0FyekLfkKo5CTaFDcgwwlskpqrg28dxcmDCG1Dqyydcmn
 49hCJ4IbNJ3G7IdLybwf/grsfCPzPMwvNmx96aomnjwIlsNwlMeT2wmHBhGnLhRA7M
 99BTtpTFqxBn6uVQ5m/o6ywfdmKFeZ0E0zqhQY8lyqJw/ajqE9ZYdh03Ale41wSVxX
 XlAzq5z3KiLAHnW5fZsM3JFwd3PhORztn09F+R/UtvSt8nv/gBj2lmTdcgPK7LW5vh
 FBnU5kfXgK5jw==
Date: Fri, 1 Oct 2021 13:42:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v12 01/11] phy: HiSilicon: Add driver for Kirin 970 PCIe
 PHY
Message-ID: <YVbC61dhsvAnqBqL@matsya>
References: <cover.1632814194.git.mchehab+huawei@kernel.org>
 <b7a4ff41b57d861b003f1a00cae81f3d226fbe18.1632814194.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7a4ff41b57d861b003f1a00cae81f3d226fbe18.1632814194.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_011232_641146_07D61F88 
X-CRM114-Status: UNSURE (   6.33  )
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

On 28-09-21, 09:34, Mauro Carvalho Chehab wrote:
> The Kirin 970 PHY is somewhat similar to the Kirin 960, but it
> does a lot more. Add the needed bits for PCIe to start working on
> HiKey 970 boards.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
