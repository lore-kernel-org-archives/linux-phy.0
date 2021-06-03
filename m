Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0354CC47082
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 12:43:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B498261359
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 12:43:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B498261359
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUEkM+CjGJ9pupKZtRMRRZP4LGmAQgMhEnU90HN06sc=; b=mLbSO8UbDcLkc1
	KjKxmrlBsX6ESj2py2QgJ6rL+1dy8sEUGcAxfG9YhIiWehmp4iRx/7alfP++x+nkp/iJMhdJ5ff6M
	cbeiIYtTGt2LjN5vFwkmb3RqDs7w3qYXuy2UoxUzc6P2KW5qG9n/eXDI2XlHdJVaw411qnEqesA3M
	zPt+DAoiCY+PpAV0JuRivPoKFfBT2/qgPC/UBPflJ2GzO9feJX0RHDgTMLg4MIlt3QblaDLk2zCYx
	dxO/no12RCgdhAUngZHNF355WXs39I/Kr7payCPX7wWwKpPjmcSiLyhkyE8SGrjZ5umOVdwlrrmd7
	eLAhZoBBXoAqKEx760pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lomhY-008jNM-4M; Thu, 03 Jun 2021 12:43:56 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lomhS-008jKy-Qs
 for linux-phy@lists.infradead.org; Thu, 03 Jun 2021 12:43:55 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 153ChlMY102052;
 Thu, 3 Jun 2021 07:43:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622724227;
 bh=1g7f2iazNLoRP6uhUTcbq8C+Xj9mTn/TWmB4q7LOYQA=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=uMW89sKGfRqX3wUKfNHVidskiY08d3MivnaPcdrQIkdYeLOD5E+5cf92U2V0aM5Km
 fdVDBpcVRy9V/1bPTbNPbHnRESMIwahVsYXZMMIYZaTYQFGNvdLJQlLUmB64iWkTrw
 aZOyHrIa05mYWiTZNHXSLUjzJcjQkC8ne4oOVVfY=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 153ChlEi043928
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 3 Jun 2021 07:43:47 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 3 Jun
 2021 07:43:47 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 3 Jun 2021 07:43:46 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 153ChkqU119106;
 Thu, 3 Jun 2021 07:43:46 -0500
Date: Thu, 3 Jun 2021 18:13:45 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Rob Herring <robh@kernel.org>
CC: Maxime Ripard <mripard@kernel.org>, <linux-kernel@vger.kernel.org>, Vinod
 Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 <devicetree@vger.kernel.org>, Benoit Parrot <bparrot@ti.com>,
 <dmaengine@vger.kernel.org>, Steve Longerbeam <slongerbeam@gmail.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, <linux-media@vger.kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Peter Ujfalusi
 <peter.ujfalusi@gmail.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, <linux-phy@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 14/18] media: dt-bindings: Add DT bindings for TI
 J721E CSI2RX driver
Message-ID: <20210603124343.mpyjdc7yxcnajkc3@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-15-p.yadav@ti.com>
 <1622125407.764961.731785.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1622125407.764961.731785.nullmailer@robh.at.kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_054350_989156_E34B1708 
X-CRM114-Status: GOOD (  25.17  )
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

On 27/05/21 09:23AM, Rob Herring wrote:
> On Wed, 26 May 2021 20:53:04 +0530, Pratyush Yadav wrote:
> > TI's J721E uses the Cadence CSI2RX and DPHY peripherals to facilitate
> > capture over a CSI-2 bus. The TI CSI2RX platform driver glues all the
> > parts together.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > 
> > ---
> > 
> > Changes in v2:
> > - Rename to ti,j721e-csi2rx.yaml
> > - Add an entry in MAINTAINERS.
> > - Add a description for the binding.
> > - Change compatible to ti,j721e-csi2rx to make it SoC specific.
> > - Remove description from dmas, reg, power-domains.
> > - Remove a limit of 2 from #address-cells and #size-cells.
> > - Fix add ^ to csi-bridge subnode regex.
> > - Make ranges mandatory.
> > - Add unit address in example.
> > - Add a reference to cdns,csi2rx in csi-bridge subnode.
> > - Expand the example to include the csi-bridge subnode as well.
> > - Re-order subject prefixes.
> > 
> >  .../bindings/media/ti,j721e-csi2rx.yaml       | 101 ++++++++++++++++++
> >  MAINTAINERS                                   |   1 +
> >  2 files changed, 102 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/ti,j721e-csi2rx.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/media/cdns,csi2rx.yaml'
> xargs: dt-doc-validate: exited with status 255; aborting
> make[1]: *** Deleting file 'Documentation/devicetree/bindings/media/ti,j721e-csi2rx.example.dt.yaml'
> Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/media/cdns,csi2rx.yaml'
> make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/media/ti,j721e-csi2rx.example.dt.yaml] Error 255
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1416: dt_binding_check] Error 2
> 
> See https://patchwork.ozlabs.org/patch/1484096
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.

I think this is the case here since it can't find the 
ti,j721e-csi2rx.yaml file.

> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.
> 

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
