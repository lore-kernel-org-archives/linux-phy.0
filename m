Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B984FC47096
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 08:16:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78273613DC
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 08:16:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 78273613DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhoemEGzKyZk2V8pVQyTX/uFSihjT84uoeZamk88rpU=; b=aRAn/Z7SbCX3+i
	i8NmrbOmQviHfgOnbMK+AwDaboTFkGm9GRgV48U9XSz6p3rWZFUs2l+jZSlbFhC+OpqyWuHc1qHhH
	wOdtIC/9LV5X0HuI3Ur5goBhvD9jWvrpvX6C0ltMO3P7g0O94Woub+jQJlu4T9ndThY8owfxtmJEr
	s6Rq6ETInlsNCMVdI/xi7rtqvhO43Io3TWLX4zU0BYeOn7ORMoSOA+LQbaA4ji5ODAni8TKMh2D/U
	2jBjefQ7m+t7yj9D/qCkyZ+bVTV/5Yxyl5cQURTsUKn30JsKoAxsLiA7hUHuK1JVclVsrSRveau2M
	NaQmI3c9cw5hq5wS0rYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loiWc-007d9n-00; Thu, 03 Jun 2021 08:16:22 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loiWY-007d7r-W7
 for linux-phy@lists.infradead.org; Thu, 03 Jun 2021 08:16:20 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1538G9Em086091;
 Thu, 3 Jun 2021 03:16:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622708169;
 bh=5wwte9CRzT+YNJ2vP9j/C62EmP//YgO8AMYtKlKvqDc=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=cFlU62NDbrQ7UvVXWMaEKMDFSa9srdP5LtFjdFAn+YemRMpnOwlSBLhmGz/WmY+Ja
 XAszj0auUyk2UXjK1pWyRB9TkAyqkXcU+D7K2m/lptnckNV/VqLHCixG0+fbQIFIZn
 XMuerxx7nhepSUKJIc5szuXqWA+xOoj0cfkmJXjc=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1538G9pw074737
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 3 Jun 2021 03:16:09 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 3 Jun
 2021 03:16:09 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 3 Jun 2021 03:16:08 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1538G80x052919;
 Thu, 3 Jun 2021 03:16:08 -0500
Date: Thu, 3 Jun 2021 13:46:07 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Maxime Ripard <maxime@cerno.tech>
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>, Steve
 Longerbeam <slongerbeam@gmail.com>,
 Benoit Parrot <bparrot@ti.com>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <dmaengine@vger.kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tomi
 Valkeinen <tomi.valkeinen@ideasonboard.com>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 17/18] phy: dt-bindings: cdns,dphy: make clocks optional
Message-ID: <20210603081605.v7b5peuqjbsivmzb@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-18-p.yadav@ti.com>
 <20210602132728.5lv5n2mgap2o7eyx@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210602132728.5lv5n2mgap2o7eyx@gilmour>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_011619_126033_71F67E54 
X-CRM114-Status: GOOD (  18.47  )
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

On 02/06/21 03:27PM, Maxime Ripard wrote:
> Hi,
> 
> On Wed, May 26, 2021 at 08:53:07PM +0530, Pratyush Yadav wrote:
> > The clocks are not used by the DPHY when used in Rx mode so make them
> > optional.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > 
> > ---
> > 
> > Changes in v2:
> > - Re-order subject prefixes.
> > 
> >  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > index b90a58773bf2..3bb5be05e825 100644
> > --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > @@ -33,8 +33,6 @@ properties:
> >  required:
> >    - compatible
> >    - reg
> > -  - clocks
> > -  - clock-names
> 
> As far as I can remember from the cadence documentation, those clocks
> were required. I guess this is the integration that provides a few fixed
> clocks?

Yes. The clock divider/frequency has been set via the DPHY pins so no 
need to set them via software.

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
