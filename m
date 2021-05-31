Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04D7C47082
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 09:16:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C6CF606A5
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 09:16:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7C6CF606A5
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SkVK5QUqhKnL24mutJiYoVG+T7JybeMx9GUItuoq+U=; b=kcKVatEr2+q2qi
	AgC3FUM57XFL5W/Kdl+/1sl3gc6d3+bGJFzce3zDz6769kRQWl+InneP3j17wm3qr9bAoBnXReuOA
	k59vt758engkhLNJxorsLCfvpfvxC7WXoum5yCxx+PsGqE7CtMk/FEcmPoeKrW+EUFoClqxEQtVSm
	739bKiwlb9ajM6CrNcJriU5RlRdN3iQdVLWuSgcaEQU3CB0on7K4yEID0OIPfAFZrgLvpOQEj70Ij
	jO4qjAus6D1ABUcAYTXCqUvNWXVFf8ot2rSoB8QPIylhkDXIAGiFW1uOXNakW8ZBkHoawSXgrcVcm
	8heeMjxW1NklikY9xXPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lne2V-00BgiM-27; Mon, 31 May 2021 09:16:51 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lne2S-00Bgh7-Uu
 for linux-phy@lists.infradead.org; Mon, 31 May 2021 09:16:50 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14V9GglZ070674;
 Mon, 31 May 2021 04:16:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622452602;
 bh=Its6+pOD1tBTaXUgRpY3KMtTS3wCWqo3YueW1RmMxa4=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=bhyHSF86k7TkEqFAYrfbkzaEnncWTx402W1pNM9x25C2B1kNpEgNcgH4kGbvr/E/v
 mkTSAKmvn2Azip1C/SjOXBGxfZyyDEqj3m6J64QRdoUp/jX6wFsMnuXj0ATGFU9RYB
 t/TCtI9r09p9pjLXGiqOM4a5o6WIWnMcSKA4ahyA=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14V9GgR2072205
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 31 May 2021 04:16:42 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 31
 May 2021 04:16:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 31 May 2021 04:16:42 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14V9GfmG035500;
 Mon, 31 May 2021 04:16:42 -0500
Date: Mon, 31 May 2021 14:46:40 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: =?iso-8859-1?Q?P=E9ter?= Ujfalusi <peter.ujfalusi@gmail.com>
CC: Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Benoit Parrot <bparrot@ti.com>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <dmaengine@vger.kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tomi
 Valkeinen <tomi.valkeinen@ideasonboard.com>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 11/18] dmaengine: ti: k3-psil-j721e: Add entry for
 CSI2RX
Message-ID: <20210531091638.6mynfeusuzlgegdr@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-12-p.yadav@ti.com>
 <916ef8c9-e444-afa4-d544-8fa672690fdb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <916ef8c9-e444-afa4-d544-8fa672690fdb@gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_021649_091595_65DFB198 
X-CRM114-Status: GOOD (  15.66  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 31/05/21 09:51AM, P=E9ter Ujfalusi wrote:
> =

> =

> On 26/05/2021 18:23, Pratyush Yadav wrote:
> > The CSI2RX subsystem uses PSI-L DMA to transfer frames to memory. It can
> > have up to 32 threads but the current driver only supports using one. So
> > add an entry for that one thread.
> > =

> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > =

> > ---
> > =

> > Changes in v2:
> > - Add all 64 threads, instead of having only the one thread being
> >   currently used by the driver.
> =

> How many threads CSI2RX have? 32 (as per commit message) or 64? If I
> recall right, it is 32.

Ah, sorry I forgot to update the commit message. Each instance of CSI2RX =

has 32 threads, and J721E has 2 instances. So 64 threads total.

-- =

Regards,
Pratyush Yadav
Texas Instruments Inc.

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
