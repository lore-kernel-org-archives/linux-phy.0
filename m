Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BEFCC624D4
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jj81MBCTCmBPvs4Mh/dSVUTGHiox76eqeR0+3mX7Co8=; b=RXrq2PnpP698uR
	AFK/bEPzUwYhYS1eYICFzxIvZRiGYrPJcAzHUiEnAFR26VBbAsShOlehxO6NF/9hvKxUIjZ+GYCi5
	fpmHDVpaHGX+ySUfa1lRPbKXlePVzaELQ60tD0Lzv4oyyW+Zj/jxABzxKHe32MC482kWueAmiktQ/
	CCZYUowhheL7vSBuzPA/YNZ1BbNd8Zw2ewvOfAWHUkeT7GqMVDpWFcqqH3dF2Hl2bMYJU4wGbt/vB
	TI7jQgVXz9bjVknoRNjMxlickTCD8mOIo9UKc9+sZJyHaZL2VOt7+2uNc2S+KwjROyqo4qfqffW4g
	pwbBaPDjp7+ay3m6nFkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OSQ-0000000CD81-3E1C;
	Tue, 01 Sep 2026 13:23:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OSO-0000000CD7J-2W4z
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:23:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJavv2323334
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:23:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LY/qFfNeXTWEjEd16ELP0dtmcJY52hrpFdmEjsFcgBM=; b=pqlaU/y5IhnmH8OL
	SpzuEtRad3J3e8wEZJvHvoKfOyYf5fT9FKXiKlNJErmwM6zJYI3e2zrRPPOxUN4x
	BnaWC7SrTB+DEe6xHZ7xm84fa298hw8djONfpPZabpCb2zCYM5XBfsozwZPPVvdw
	9BdbXSn+nuiYul4lm9kE7jVNQg6dnOYTJ7XwBz2MuAbVOq/nUozlS564F/88UGD9
	+Wb3AaklOHIQCdYHAlXmg0sWqHVMG2OCVxejJbrNpIItaq9dMSjL1gR8T0nQH0S1
	NLvdqvJperP0DrwAhIYYzj1MqNiowIU+3N3ZrUakoVLMg/epeAhxwxeZ3xooRHrv
	WUVQXg==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdp7camdu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:23:20 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5c673f01b76so132857e0c.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788268999; x=1788873799; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LY/qFfNeXTWEjEd16ELP0dtmcJY52hrpFdmEjsFcgBM=;
        b=b6lUSxs3O3Fug3gossDAaE1xPIYK5WS9j0HYfWEwXaQdI5f/AXP7dt4pqEqBz2eorF
         JkX5+7Jrf6iwCF19nftja/URZ9PSu/gZIuDv7LarcKjaFiYmI627RITXYuSvSHQ7YU6M
         nF0GmUKk9MopLFdxjdXnYaL5G0SKABdK73PpeFQmIGiOsVsc8c0D1hM/ne9ckEIV7ZJU
         CP5wNnPUJ0MX/XOuw9kEOuKwT0MbsMEFz5/J7hYi+jSJ9YVAG/+9+NzTG2+PESHJu+Ls
         XsAq1fD8Kmypc+AwJGugTgHxWnrvx5QJm6iFJSstyoH1PNU/vzbkoG2Mak4WU1KohqSq
         /kLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788268999; x=1788873799;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LY/qFfNeXTWEjEd16ELP0dtmcJY52hrpFdmEjsFcgBM=;
        b=bWPJqSNoa1AmloJfeHkFzxN0UZ6Pqs5h9yQSYNv2N6bTltBUz3L1pwySQXiWq4UCaU
         Ql320RceaDzkQWrH3W6smsTXMoZlCIhxskCkYcw4KqNj3bRq2rgbnDbO1OF5ZfNF1nW2
         afJ62RVbOStvFl01wmP4F/svGZ2gaV4wQFJrZpR0iTdTGhN1iUPKDMq9vnLdZR5gb1uF
         scx73yFR8FdA0F8OtQWYkCem7u79vhisjYT2Bu02tfFDuIQoFH9w5JtjD8qgUENjVg3G
         Smv9J/Y80FAXxPB3FKyG0/3zIex8m6zg8aXZuZz7hbPdgTCDhSmIupopYy8dyCsWSZOk
         GA2g==
X-Forwarded-Encrypted: i=1; AHgh+Rq7jMxqZE/dg7apdg3Tq7Z4wDWJq2XjGhHu5WPSRAuiCcnAsuO+g873Ldyw3eECTP1i3hZ7qyjcvaQ=@lists.infradead.org
X-Gm-Message-State: AFuF++n2V3nC4Dv+3Fe2Jxfx5DJ+T8SIBWhMdJqby8i71a6q01R1wpII
	/uFhGY3eWbn85dfm4xrgo16UoFGyiMcLq75zcR4iCMxRvzqEpUJpDMoJ8uQNIjaLXYJ3JC2m86U
	/HE3ltap7GK8s4eVZ97N/n8w7FzaXeY/dcz5X0d/pq+WlkXtsJrqJiO8wAkuWMhpk3rU7
X-Gm-Gg: AR+sD11zA/8M7/jW7Zhc2XFLn6bfZfvChiSC5TF0f5f2kWqP9kSe7ywKvWW+mIr4puh
	rGTQ8AxPZdyihxDIoCC0a86NHyB82S1XSA7r80uH6EjozD8ClHCy3/PMjoY5U9L50m8AcV83NdS
	CJeNi4jjKBSZxvL6ZoRTjsvaD+7MeJpt5/Kb4sm7I6wuz8WvgftJDBw3CDeUE1TxYwuKTTev3Y5
	5NqGFvTW0qTERzAEeH3N8vVo6kBTvRiMtnAg+j4yfd6rUtGCWcITRCsqLskQGR9RNITQe/XGzkf
	GJIqOuc2iVsjt4BNCB9HGNL0IPupoh/nQNd297rvMbhKYxkqoM5RsasJDfv5kwtR8i5H2Ki3PCm
	f4oQFI64e3R/7zzT3m3Vk3Q==
X-Received: by 2002:a05:6102:508c:b0:789:3ef2:1da1 with SMTP id ada2fe7eead31-7893f0161a4mr2830130137.1.1788268998810;
        Tue, 01 Sep 2026 06:23:18 -0700 (PDT)
X-Received: by 2002:a05:6102:508c:b0:789:3ef2:1da1 with SMTP id ada2fe7eead31-7893f0161a4mr2830117137.1.1788268998314;
        Tue, 01 Sep 2026 06:23:18 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b5e89c5b34sm2867117e87.3.2026.09.01.06.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:23:17 -0700 (PDT)
Message-ID: <f328d93e-2df6-4c94-b7c9-cc0ad6158f46@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:23:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Add
 support for USB3 PHY on IPQ5018
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-7-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-7-39be0955a6aa@outlook.com>
X-Authority-Analysis: v=2.4 cv=OcyoyBTY c=1 sm=1 tr=0 ts=6a96d1c8 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=UqCG9HQmAAAA:8 a=B9jzo3DVsI2-tMNqGVoA:9 a=QEXdDO2ut3YA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: vwp16PHWMvsFRvt7dyd7SKvhirycfzy_
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX0B15TIO1lKeZ
 5TwnXqQCQWK79j17r02krrhe+D6uX8MphgwyOww15JQHI1Th1JBDFieOpVOFNqxZWbSI0lQGZbv
 PZLt8tesNCJJCm3wGY5XeXHEruf791U=
X-Proofpoint-GUID: vwp16PHWMvsFRvt7dyd7SKvhirycfzy_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX8SZjSQLBhJHa
 JhY/iUV9c04Ednu+OxKZstoLiSpYiowlDGsgW54hNFS5/THsMPgbe17mrNPdbUSV/nLeDDF4Vec
 IN3KPCgBusLu7TneKxZEFQQru22YAp9U7ps3IVJx275OufUB/Rgpg//xa5ASWcdNsH2Q1dAdcKl
 ga3skMdmQErmaUyrJKCYiaMcYkzhVk4ecBv9ybKpp/RA+mvMN10V1ACPZjmXTp/xA3AdxYM3/iT
 rdfXAw7g3XJY92aTtYFmwrVBCs8G8VcfjLswFwNSUdH1b8OuT9cEsTtSiB9nmzWtqRLvCFRp/Rw
 4ZUNE4QHUKxEU9XV2xanhXbENM+ynx2o2W4yk8WJBF88tLD46T1urecVOV4f+VbU8adl+60hThk
 WJThMBZrHP7cKc1BNyoIwV/tmm2YfkLXn7idrCcjAeoIcH1adFTDkVfk8+7tgA0fZy3FZvc/gXe
 KUuB9qqTxlmZFrqf6JQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_062320_708780_32604A75 
X-CRM114-Status: GOOD (  15.53  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add support for the USB3 PHY on IPQ5018 chipsets.
> 
> The PHY outputs a 250MHz PIPE clock routed to and gated by the GCC, so
> register a fixed rate clock. In addition, add the register/value pairs
> for the PHY initialization sequence.
> 
> The PHY requires a 5V supply, so acquire the regulator from the
> devicetree and enable it on power on and disable it on power off.
> 
> The code to acquire clocks and resets is the same as for PCIe so no
> changes are needed.
> 
> Power on/off sequences for PCIE and USB3 are similar except for the
> delay timings and USB3 requirement for the PHY supply.
> 
> Lastly, the PCIe and USB3 pads are muxed so select USB3 mode in TCSR
> which needs to occur before the DWC3 USB3 controller resets.
> Otherwise, the SS link doesn't train and remains stuck in RX.Detect.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Let's register both PHYs (#phy-cells = <1>), but only make one
accessible. Otherwise, we'd need to alter the compatible to access the
PCIe part.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
