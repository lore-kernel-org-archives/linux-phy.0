Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1F5CC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Dec 2021 20:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBZrrBgZmkKTNtSSxStaFE8mIMutoyep5imUNuzUMkc=; b=hzg5N70y9F1G/G
	vFN5408b9JQMtLaJxUTfq3ss9J1CrtZXaACKIH71ZDJMVNsVZIaGfjNdbanT5XeGDJpuZ071JdEty
	PSTHExXBga2CFQe/CwVTPNiJ5Lf265dTcwBksI0sj4aruA13gq/OP6LYbZoVJzwUYN91JmpmP/3ET
	lCDVg2o+gpDFheaEQdrC0tNqCM927zVfl4MuW5lxt/N3s9uolScoox/du2z+So2Gs16Pspm3C27Hz
	px6QcHryVfFQhxLIafvUOFll8/+qeIkjVGnbNutKysseGSbp8hV1k5uT7/CriTUTipFfbu81t+IhL
	tD6MkLc9yMWZ/rpOBP+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1wvi-00HSsA-1P; Mon, 27 Dec 2021 20:49:14 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1wvd-00HSrh-QB
 for linux-phy@lists.infradead.org; Mon, 27 Dec 2021 20:49:12 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BRKn0vf081374;
 Mon, 27 Dec 2021 14:49:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1640638140;
 bh=Sf+TygJTFGkJZaMoLDFtGI1kePsfZJMILid4Yayi3QY=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=lNJOuzS8kBS5Ms6YKmBSWuOZSTC9WqZt+t2ALBpx6KSeMgadLH5oXz+SLgCc9aLus
 c/1cCaoiFZgDH/gXZ0GWAX4xXeVvWlaSZqje/ClXIK4jt+7K8nAOpqixfNmQEMC42v
 5LZ5Xo5BaQji54CwkWMu0/6ba6rPryYioUuCQ1wo=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BRKn0iR024882
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Dec 2021 14:49:00 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 27
 Dec 2021 14:49:00 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 27 Dec 2021 14:49:00 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BRKmxHS123431;
 Mon, 27 Dec 2021 14:48:59 -0600
Date: Tue, 28 Dec 2021 02:18:58 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Rob Herring <robh@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>, Vinod
 Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Swapnil Jakhade
 <sjakhade@cadence.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 <devicetree@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Tomi
 Valkeinen <tomi.valkeinen@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v7 4/4] phy: dt-bindings: Add Cadence D-PHY Rx bindings
Message-ID: <20211227204856.o6s6kjt5yahuk2j7@ti.com>
References: <20211227105545.4852-1-p.yadav@ti.com>
 <20211227105545.4852-5-p.yadav@ti.com>
 <YcnwcpPdOOJ7WgSe@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YcnwcpPdOOJ7WgSe@robh.at.kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_124910_022337_621EDDF8 
X-CRM114-Status: GOOD (  15.98  )
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

Hi Rob,

On 27/12/21 12:57PM, Rob Herring wrote:
> On Mon, 27 Dec 2021 16:25:45 +0530, Pratyush Yadav wrote:
> > The Rx mode DPHY is different from Tx mode DPHY. Add a separate binding
> > for it.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > 
> > ---
> > 
> > (no changes since v6)
> > 
> > Changes in v6:
> > - Add a new binding for DPHY Rx.
> > 
> >  .../devicetree/bindings/phy/cdns,dphy-rx.yaml | 42 +++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
> > 
> 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

Sorry. I missed adding your R-by. It was by mistake, since this patch 
has not changed since.

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
