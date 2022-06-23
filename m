Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83CF1C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 09:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lH6LRd0TUJN1FWNM9Cx68+410O9GQrdQPsSZtKNCkw=; b=ZCkQrjsiPdWJlH
	eoiku7voPcZtlE/pJZiJOfbaiyB0/XNX/pE20tCdWteJWTLewGzlnUQmZAEulhi+E777oZbbMc8XE
	SPGNdvGZLlAYG9fcQuEI8eMON/eQwkvESpLrN0ocs5QC6KNproHEEqZ3iVRq0kVzAF/4H9jcL5eEx
	PwDGzJTGfYm7/8+nXm5I5yQO92DSjPY/29D5GnHYOzMwiR2MJPdNxC7o2/dBG4euXeL5g5eeb0ZQw
	FLQdqcQm3N3iUP8VjJTskiB7jxEh+xSgk+9du4sY7ivXV7rixbC3Ke0VwBVtmkUVgDT/+ykAW5a5a
	+8eb2MpMntwkR/Hk9pHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4JIE-00EM31-UC; Thu, 23 Jun 2022 09:38:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4JIC-00EM0n-As
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 09:38:29 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 25N9c8p7045547;
	Thu, 23 Jun 2022 04:38:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1655977088;
	bh=xcDBzuuWJbm2LghsThKgtLoLU5IioBbxzOEFJZ0GpCE=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=Mi3zL2jp05x7hJqbNJQpRNIl8WBMsFsV/lYOjr/ziUY5eU3DYdRY/MQl7AgobTQRJ
	 buuxDoLnbHUw+hKOwZ3Qvi+zxJj+EVjQMtHYimJYLbga55ndgnAkrvdWpb+qZfSKsr
	 gLdciKl1mQPyDfc8E0oVHaCsUAxo+fGVVJJ6o0tc=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 25N9c8FO125795
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 23 Jun 2022 04:38:08 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 23
 Jun 2022 04:38:08 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 23 Jun 2022 04:38:08 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 25N9c72B024080;
	Thu, 23 Jun 2022 04:38:08 -0500
Date: Thu, 23 Jun 2022 15:08:07 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Rahul T R <r-ravikumar@ti.com>
CC: <linux-phy@lists.infradead.org>, <kishon@ti.com>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <laurent.pinchart@ideasonboard.com>, <tomi.valkeinen@ideasonboard.com>,
        <linux-kernel@vger.kernel.org>, <jpawar@cadence.com>,
        <sjakhade@cadence.com>, <mparab@cadence.com>,
        <devicetree@vger.kernel.org>, <vigneshr@ti.com>,
        <lee.jones@linaro.org>
Subject: Re: [PATCH v3 2/3] phy: cdns-dphy: Add band config for dphy tx
Message-ID: <20220623093807.5vy5zu57w5kqr25k@ti.com>
References: <20220622105311.21415-1-r-ravikumar@ti.com>
 <20220622105311.21415-3-r-ravikumar@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220622105311.21415-3-r-ravikumar@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_023828_558601_B66398E6 
X-CRM114-Status: UNSURE (   4.99  )
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

On 22/06/22 04:23PM, Rahul T R wrote:
> Add support for band ctrl config for dphy tx.
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>

Reviewed-by: Pratyush Yadav <p.yadav@ti.com>

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
