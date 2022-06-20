Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66C61C43334
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 07:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7lALOrgCy25MqPOUgSoR1oRkr++DNTPB9UH7T+ygBg=; b=o3uPUSdhnKoC4W
	ngY6cugUNfpvRlZtnQPdRO02vyLuYiPPBixuVCCKmtIUbSa3dQHukAcgCEVdb5VLlQ541meTZC8S6
	HcRFoKWahcx7ynFc9DHCs1yV71fUI+AZ1fLOma0lBQKapXOdqBTKLsgL1WrB/xgvjLDP6DLsbM7r+
	XFH8rIaGn0M0pM7zWh+HAtHcg+zacTlu7Y8DpnG2X0MCqjz/QQqQnogYJ89bpwlg+VAu1tzQgZvVI
	ZP+Pz5V6cUAfRZotUMM2G0EUp0aZCGyI0lxskrmmDoRqkec1gWRHfXI5zrHnhhR2T8mGNc1bicrC2
	TU4PmOdzVQBwPF4MGU9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Bwl-00Ggt4-QK; Mon, 20 Jun 2022 07:35:43 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Bwi-00Ggr8-TB
	for linux-phy@lists.infradead.org; Mon, 20 Jun 2022 07:35:42 +0000
Received: by mail-ed1-x52b.google.com with SMTP id es26so12145069edb.4
        for <linux-phy@lists.infradead.org>; Mon, 20 Jun 2022 00:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LK+h2iGp+FEdq5egGWt8aFfxmV7BDPBoOQ4aISdjxsw=;
        b=dR2FYV+L/1fAtQC91SldjEDV5m2KbV+omB84RliOqB9SF54DIX6B/WK2iZizEMpVZT
         L86d5D0lDyYoQVnZRPSJUFQ5Ne+KsAHajW5Kco24dXJHFk1ThMEgs9LS+oET/xIq6ZRB
         /4Z1H8OvK9/1q+fx3cB0b3Zdv6/rWpscTAswKAEJa918sbBLLMisvdWmPY3awoRjE91W
         grlz+Rqy0B7u6DtRUVTgy5UPRmL7nSCIEsK/xKNBdeTn9ZkaqFME+qKXLxxna5vHrBdJ
         o5NdUZKHXDie0SN0ESBQ44+A0X2LYA8uJ9WtF0np5k7AhAbKHbidzCz7K+iJQW+o5nqe
         olhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LK+h2iGp+FEdq5egGWt8aFfxmV7BDPBoOQ4aISdjxsw=;
        b=u7DNtfAxIVftT6bmRgAedAftCIp5imfzuWymaB49tEtQgiHRmF+BMpAgJDR1evUW4V
         sU0HS+2Bs37KzpSN52bq6xZoDsrzsrn32FDvLiBhfnoLfitTTeLyXRaoi0t7Bdirl4Nb
         2h3WgJebkab/gtUsqDpGWLodWIE+rcrDeUkwwqe4OBXjiLnMJikvkXohJb2UoyXReYKe
         qY1WXdBf9woeciYwe7OFjNXSxbgUr7J4F5h3Y0fjr95YNlnOavCJS1zMZKM/Qdg9Oqiq
         tOefOxfFHt8+/xJWksv3vgpJfG3HW8xXQ0Cvhp66Ntv2jShkCmorXD/eRxZZWc74DzKu
         BPZw==
X-Gm-Message-State: AJIora+fcCwnDTh8pwVSkXLzi61WNkmIQ0t9dM7nQSlZmT7SKsjTrYD0
	gQYZgh8MnPZ2JcKuPSfqscShZg==
X-Google-Smtp-Source: AGRyM1vQz+p3dzznqsCkDc567/s1M7YN/IdCOaWjkzpxc4fFrcYHL7hmiHyPBFESeaSj77W2DDl1gg==
X-Received: by 2002:a05:6402:24a4:b0:434:e43e:2462 with SMTP id q36-20020a05640224a400b00434e43e2462mr28012497eda.312.1655710538202;
        Mon, 20 Jun 2022 00:35:38 -0700 (PDT)
Received: from [192.168.0.206] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y3-20020a056402358300b0042dc25fdf5bsm9685616edc.29.2022.06.20.00.35.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 00:35:37 -0700 (PDT)
Message-ID: <3f805983-47c0-9be1-f221-4cd23b847018@linaro.org>
Date: Mon, 20 Jun 2022 09:35:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add Freescale i.MX8qm Mixel LVDS
 PHY binding
Content-Language: en-US
To: Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
References: <20220618092201.3837791-1-victor.liu@nxp.com>
 <20220618092201.3837791-2-victor.liu@nxp.com>
 <b83e3100-edd6-4f91-75e0-8a87447d8a4c@linaro.org>
 <89a29795e918343583f45b0f8a65a002592f8b15.camel@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <89a29795e918343583f45b0f8a65a002592f8b15.camel@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_003540_993500_CCC7D7FF 
X-CRM114-Status: GOOD (  15.67  )
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

On 20/06/2022 05:06, Liu Ying wrote:
> On Sun, 2022-06-19 at 14:11 +0200, Krzysztof Kozlowski wrote:
>> On 18/06/2022 11:22, Liu Ying wrote:
>>> This patch adds bindings for Mixel LVDS PHY found on
>>> Freescale i.MX8qm SoC.
>>>
>>> Signed-off-by: Liu Ying <victor.liu@nxp.com>
>>> ---
>>>  .../bindings/phy/mixel,lvds-phy.yaml          | 64
>>> +++++++++++++++++++
>>>  1 file changed, 64 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml
>>
>>> diff --git a/Documentation/devicetree/bindings/phy/mixel,lvds-
>>> phy.yaml b/Documentation/devicetree/bindings/phy/mixel,lvds-
>>> phy.yaml
>>> new file mode 100644
>>> index 000000000000..de964ffb9356
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml
>>> @@ -0,0 +1,64 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: 
>>> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fphy%2Fmixel%2Clvds-phy.yaml%23&amp;data=05%7C01%7Cvictor.liu%40nxp.com%7Cb68f9012ddcc44bc10cd08da51ece7f7%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637912375188731290%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=MdBILPYmfYeWeCXXNxy1mu1NcU0b6EW3QztYc294dd4%3D&amp;reserved=0
>>> +$schema: 
>>> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=05%7C01%7Cvictor.liu%40nxp.com%7Cb68f9012ddcc44bc10cd08da51ece7f7%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637912375188731290%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=MhHwku8rbDLAZAQh1T9CGFULMkk5MaNoj3LQnQJ6VXM%3D&amp;reserved=0
>>> +
>>> +title: Mixel LVDS PHY for Freescale i.MX8qm SoC
>>
>> If Mixel is a vendor, it needs it's vendor prefix documented and used
>> in
>> compatible. Filename should match compatible. If it is not a vendor,
>> then filename should be "fsl,imx8qm-lvds-phy.yaml"
> 
> Mixel is a vendor. I'll document the vendor prefix and set
> 'fsl,imx8qm-lvds-phy' and 'mixel,lvds-phy' as compatible's enum.
> I'll keep the filename as-is.
mixel,lvds-phy is not a good compatible (and filename) because it is not
specific about component version. Please use specific compatibles only
thus also specific filename (filename should match first compatible).

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
