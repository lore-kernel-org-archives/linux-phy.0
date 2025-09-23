Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 043BFCAC5AA
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 03:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQLn40lL8TOJWHh0wX2gjnLdznnw6/1+1kWmr0Q0B7E=; b=4nCEUaMACaeVDi
	hjEr5An7N/O7mTNmqcjO9Iv+hV4Z5hducB+IVyGdccE8IJIYWiUInzaJ1JUP8OBno+idRb3cJiCaY
	3Sp9AjfzefvKIsTgetpkvm8uYbEvL3/hRGUBXjU/mFtu+asEoTD4BVlms6mVzx3JwV5AsKEwMjfp3
	4A+ZLt49s20Zt7g0Lh9FOE+ANT7L1Qs83XoGOTBgXCM8Smm/ToPny44KB7Hydn86Ek/Xp8+ubaV6v
	ZkiwPEilQD3lKtcZYKeo6UNeRsANNnuB6QRC0d9dRKEDG+5k2Z6Q/UGk9aDROONjNB5A4hafoZr9C
	+ENVDW7pcc1gIe2lhXRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tOg-0000000CCFg-2wdp;
	Tue, 23 Sep 2025 03:08:54 +0000
Received: from azure-sdnproxy.icoremail.net ([13.76.142.27])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tOe-0000000CCEp-0Lin
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 03:08:53 +0000
Received: from luyulin$eswincomputing.com ( [10.12.96.77] ) by
 ajax-webmail-app2 (Coremail) ; Tue, 23 Sep 2025 11:08:48 +0800 (GMT+08:00)
X-Originating-IP: [10.12.96.77]
Date: Tue, 23 Sep 2025 11:08:48 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: luyulin@eswincomputing.com
To: "Rob Herring" <robh@kernel.org>
Cc: dlemoal@kernel.org, cassel@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
	ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: Re: [PATCH v4 1/3] Document the EIC7700 SoC sata ahci
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2025 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20250922161140.GA150852-robh@kernel.org>
References: <20250915125902.375-1-luyulin@eswincomputing.com>
 <20250915130135.1497-1-luyulin@eswincomputing.com>
 <20250922161140.GA150852-robh@kernel.org>
MIME-Version: 1.0
Message-ID: <42166db3.16e4.199748b931d.Coremail.luyulin@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: TQJkCgA31pRAD9Jo0tvXAA--.25586W
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/1tbiAgEOA2jRelQTUQAA
	sb
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_200852_473638_534125AA 
X-CRM114-Status: UNSURE (   8.58  )
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

Hi, Rob Herring

Thank you for your review and comments.
> 
> On Mon, Sep 15, 2025 at 09:01:35PM +0800, Yulin Lu wrote:
> > Document the SATA AHCI controller on the EIC7700 SoC platform,
> > including descriptions of its hardware configurations.
> 
> Please fix the subject: "dt-bindings: ata: ..."
> 

I previously noticed this subject issue, then resubmitted v4
and explained the reason in the cover letter.
The links to these patches are:
https://lore.kernel.org/lkml/20250915135138.877-1-luyulin@eswincomputing.com/

> > 
...
> > +description:
> > +  AHCI SATA controller embedded into the EIC7700 SoC
> > +  is based on the DWC AHCI SATA v5.00a IP core.
> 
> Wrap at 80 chars.
> 

Thanks, I will fix it in the next patch.

> > +
...
> > -- 
> > 2.25.1
> > 
Best regards,
Yulin Lu
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
