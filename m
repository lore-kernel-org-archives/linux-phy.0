Return-Path: <SRS0=SQnc=O2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AC5DC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 06:51:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7C2D610E5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 06:51:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C7C2D610E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M41xDUbp4h8EQ4O97s+772ezFgvGKsDcxo3+4B6DKIA=; b=rcAVIClHi/D8J7mUJyMp/2h8TT
	8P0vkPPzeVhlAIMeC4Y9mKraYJqHBLeZLPx21r7GuoQ2d5G3XSss1UGBczncV7VFVQHCAe0+tOFBl
	JLs0PjMytxDOBu6r903QknGoepNeOmG9xWwYA60GwGwTIVy1Npki1fFbpXPQirsx2EnOuOcznq8nW
	j3pQcHhm1pomQ6QIIJBbLmv6X7JQOOLdEZN2mc/g2BALr8JmYHcLWaeh2yWV54LQMuIiBq6uFlTY3
	UjDQubibgvwBMJJ9Iwj6iyFa8HXoP1GoXKJ+XRgfAVr/yhXdKO7JtxAxqdbLV2KLj8z0E9TIbmSQu
	oTVE9V+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY0m0-00D4In-CI; Wed, 06 Oct 2021 06:51:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY0lx-00D4Dq-8W; Wed, 06 Oct 2021 06:51:27 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1961ksGV015791; 
 Wed, 6 Oct 2021 08:51:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=rO925toKGJpSuU4pLXeMxuqM2/M7LYZ/XbcUM5PgYCA=;
 b=5NjtWws5VCmwoC2Bp39pmuU0vGYVTPiuuIiyTS6mmxvU6/2DFmyHspwAq0aoAQVtCZAr
 nZlTEHJ7yRPVldLaU2Z3Ac4zuDb6nPoMuCEFeZOEJjsQaQgXtZkxgqUThTiN9YiDD8cx
 cHrRP+tJUz8+Vf0OUH7smvteCpkegWVZ9+qwHT+vCjqJR7Y+tulY/rVLjkoCAfLQjrms
 TKkMZd1kQtIhnv3xtQIThE5MxT660cebxtS28rnFzh+/qscThp7l3m402qyEV8erHPLp
 wzA3uFWcB4+SAkaOD9M26p4Fxfs2Oe+Da3qb8F6smJKxYki1B6X1+FH5lHM/k4QDEc+F Ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3bh2eh9e5g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Oct 2021 08:51:15 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2CD1A100034;
 Wed,  6 Oct 2021 08:51:14 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2289F214D39;
 Wed,  6 Oct 2021 08:51:14 +0200 (CEST)
Received: from lmecxl0995.lme.st.com (10.75.127.50) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 6 Oct
 2021 08:51:12 +0200
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: phy-stm32-usbphyc: add optional
 phy tuning properties
To: Rob Herring <robh@kernel.org>
CC: <linux-stm32@st-md-mailman.stormreply.com>, Rob Herring
 <robh+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 <linux-kernel@vger.kernel.org>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, <devicetree@vger.kernel.org>
References: <20211005152453.89330-1-amelie.delaunay@foss.st.com>
 <20211005152453.89330-3-amelie.delaunay@foss.st.com>
 <1633473959.465401.106809.nullmailer@robh.at.kernel.org>
From: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Message-ID: <491ab475-e7dc-eb71-85aa-6d82543b74db@foss.st.com>
Date: Wed, 6 Oct 2021 08:51:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1633473959.465401.106809.nullmailer@robh.at.kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-05_06,2021-10-04_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_235125_821802_24148DF9 
X-CRM114-Status: GOOD (  25.03  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Rob,

On 10/6/21 12:45 AM, Rob Herring wrote:
> On Tue, 05 Oct 2021 17:24:52 +0200, Amelie Delaunay wrote:
>> This patch adds the description of new optional phy tuning properties
>> for usbphyc phy sub nodes.
>>
>> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
>> ---
>> Changes in v2:
>> - st,phy-tuning property removed
>> - tuning properties are now put directly in each child node
>> - tuning properties are no more free form text and their name reworked
>> ---
>>   .../bindings/phy/phy-stm32-usbphyc.yaml       | 126 ++++++++++++++++++
>>   1 file changed, 126 insertions(+)
>>
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1536730
> 
> 
> usbphyc@5a006000: usb-phy@0: 'phy-supply' is a required property
> 	arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dt.yaml
> 	arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dt.yaml
> 	arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dt.yaml
> 	arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dt.yaml
> 	arch/arm/boot/dts/stm32mp157c-lxa-mc1.dt.yaml
> 	arch/arm/boot/dts/stm32mp157c-odyssey.dt.yaml
> 
> usbphyc@5a006000: usb-phy@1: 'phy-supply' is a required property
> 	arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dt.yaml
> 	arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dt.yaml
> 	arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dt.yaml
> 	arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dt.yaml
> 	arch/arm/boot/dts/stm32mp157c-lxa-mc1.dt.yaml
> 	arch/arm/boot/dts/stm32mp157c-odyssey.dt.yaml
> 

These warnings are due to the fact that usbphyc parent node is disabled 
in parent device tree (stm32mp151.dtsi) but not the "usb-phy" child 
nodes. These warnings are not introduced by this current patch "optional 
phy tuning properties" but anyway. The device trees mentioned don't 
enable usbphyc, so they don't have to set phy-supply in usbphyc child nodes.

$ git diff arch/arm/boot/dts/stm32mp151.dtsi
diff --git a/arch/arm/boot/dts/stm32mp151.dtsi 
b/arch/arm/boot/dts/stm32mp151.dtsi
index bd289bf5d269..abef8b6be40a 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1507,11 +1507,13 @@ usbphyc: usbphyc@5a006000 {
                         usbphyc_port0: usb-phy@0 {
                                 #phy-cells = <0>;
                                 reg = <0>;
+                               status = "disabled";
                         };

                         usbphyc_port1: usb-phy@1 {
                                 #phy-cells = <1>;
                                 reg = <1>;
+                               status = "disabled";
                         };
                 };

Disable child nodes while parent node is already disabled fixes the 
warning. But it means to add status = "okay"; in child nodes everywhere 
usbphyc is enabled.
Is it normal dtbs_check checks in child nodes when parent node is disabled?

Regards,
Amelie

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
