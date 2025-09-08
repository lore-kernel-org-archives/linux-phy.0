Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E88E7CAC581
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 09:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYLV9Tzi4wJZNccyBXQZDvP6o0NCuMMlhCrw59YVIIY=; b=20IhXzoK4Jzg96
	SgamyIQNFYVCqI+sqi3RnFcABOauvt9+WxM/ilNIXHftJwJJS37Hmg/+o6y73t5nB3ofGQgvTFX1V
	xjQ3b3mdTABrU4VkKa4OdIgbVhJiTiHlH+uhh/OqU8OYc2qPrTljdQ++kb4mIXo4K73xC1KV3FEGK
	tidbwxnmVVxsR5K/6rofQdE7LUc03m9MKML2zGF/ikGkfV9z0g779u9i0/oa27xyGzcQPI4DsFJzE
	i2ueb//huPFkHLsTf2gb0+NKI2AWz35kHHPmxAxK2JIj8QvHet74hTZp3d4lTeMlaO6dpgHAU+hs2
	hqLBI+9EPmLxpgohLWzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvXs4-0000000FvEZ-2JFb;
	Mon, 08 Sep 2025 09:09:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvX4R-0000000FdXQ-0SKM
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 08:17:52 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587NWC9p023084
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 08:17:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vbaA8xj0zL+BI+9codvpqTtyP5KRkSsVEUoJD+vfW2k=; b=N65PseldRNfr3n7u
	m8uOcnVjh+hrbSp3KhPf9tsW9dd2YoBJHU7M0SxlDA9MXMiqTBVjKH7zneaGzllY
	2VpHgbf3XjmwLopSCzyofmzC546DVFFCA1ngYg6GbC47AfQIx6HYc2XM1w/mjKd3
	6ZbyfJs6x2tyzMgWXIoCZI6O87/Rxzas4dE2bbJIf8CMhdAPtvf7omVKR70A2W6P
	Pl+CndvPmXrJbpDdygcdSxm2++jjpQZBKcNOvuGu7FEQRJjUUmloUKdqAGSPhRHc
	roxEkJyEVfkPMH2CxhIXFYtN/Tbtk60iGASLt4GWZ3vevvH4KaQhaU3X3n+ko+gp
	u2NZUQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfupvc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 08:17:50 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b33e296278so7532821cf.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 01:17:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757319469; x=1757924269;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vbaA8xj0zL+BI+9codvpqTtyP5KRkSsVEUoJD+vfW2k=;
        b=A+640uyz0oUTOxQJkWEdnxzqJlNks5zE+Fcu6AdIOHmcFK7WMWAWkyW2FKsw4/2rrp
         uA48jv80jqCfj9nSgr/a9RBzDlJ8KL4I5OJEMpD5WgPY8w5AaJYfcuzL1rHP1BLKkh78
         JTFMu8WGgs8RXpMs0PKXn7xyDMqDQhXsk0ct4nGZ0JjOVYKS8Jl2qhi8QbvFf3WYvT+6
         e5UYh3r1N6NrrWPr5/1N0d+s5j6+9Z7arcCqKjGN3sQzu4zrQLVziJ4SadSO59LLdnP3
         7tw7ncwUV23qkh8fRKlPDySOl9yuxL0GKUhFxrlbBsTKLTevlJt4sIM2zG8wtvXDy/7q
         FFtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVadvnGVedlV21PxIowE9/ONnbyowuMz5OxJONZ7aNSlDEYOMEjEE3fbnuANJNw1MLgCJhUM9SHXps=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqOv+YhDPSBZreSsgzNuQonFjMx5xy94p9B34sfvqPFCqTbrAE
	1xxT24MaMGIrc7vjSRV8KYa76nq0bg72aP2MVGJYrIIP3zGYkQrVMxyJVwt6CkGAlkMz7qji0XP
	51GYgjziWYFT8iGZSJESejuMd1F0z/B4RU8LTO+rmSEleqxmYWSAzN6NgYCELtaxfgVev4+jMYY
	kk
X-Gm-Gg: ASbGncsyg9OlVaDHdBhO4xy5AuaVlDQB/UNjCmKN99FFhH+jQaG3m3fo7GcEe+70CiT
	q9hIVkhjwj8VaWQsDhYnlXlvWvWRxr7PfcLCIFyJrSr3PRU0Awxh58ZAT8YnwydyvYV7+2ngw4I
	bVX347IFnDxr+KbMnGqs9HpW3+nBVPJQfAhS/HySOJvglctRC2kdEKZR6zqF9MZfjFOYyX0edXY
	ukHHqszU547Y7BOYuwCN9KdzxebLZu9cql0pGXnv0E8CwF9kncyjOc2QcnM0i13B3FUUx1BGDUc
	TTPABdNSeCyTlKBiP/vi0dxRIa+2MzH0YxFQpPaU+dMTO2GDRDl+JUc91qb8opFQzrFFZsu4er1
	IdBR8On7WFFxgLkNAdfe61A==
X-Received: by 2002:a05:622a:1355:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b5f85310efmr52561461cf.9.1757319469255;
        Mon, 08 Sep 2025 01:17:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBEfgpDrRtNN4TDghi2eIkkpFAnt1x/Ei5zwPYuhmrTl8KM/5H3CwRozot+PjpnqGD4xAMjg==
X-Received: by 2002:a05:622a:1355:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b5f85310efmr52561331cf.9.1757319468646;
        Mon, 08 Sep 2025 01:17:48 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04709b3effsm1224560466b.5.2025.09.08.01.17.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 01:17:48 -0700 (PDT)
Message-ID: <7aeebe52-6408-4247-9ec8-9822c8a96ee2@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 10:17:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] phy: qcom: qmp-usb-legacy: switch to common helpers
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
 <20250907-qcom-dp-phy-v1-1-46634a6a980b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250907-qcom-dp-phy-v1-1-46634a6a980b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: tQQ9DN-hFWCC9W5vqBZl1wL3KrTxobrU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX5n5oEeUBxF0t
 Ixo8GWE9pRqPps31GC8ZdGJXV0LyL8C9KSESD8T2ESyB+XE9PK4k4dpxExUlX1A5DgTfbIb4Ytf
 6PKBw85gCQca1dIEKTHsafNfz3/WrboMHm8TCHSq/dItHOXamcHMSvDPJTW0MUFCLckuuO2M1zf
 Tk9DyVaOr/+CnxKSwmTVwabGLz/6CyH7rhC/GxU/CZ2NylnLo8DHCFZp/4/uMtOPcoso5gqTDNE
 c7RCsW9irzt17CunI77XGvpstcoYtiPvm+MQ+kvt6hQHnqFn2jhadYDuEVBhVUMTUFx5glSUvYm
 FfiGPz2UKAKeL6A4QhRQ5PetZ8QoNFkaJ5vUyvMwM/1fgW1xrbE7xm7EURg8V3Q9ogg3RNZ7bZ2
 MY1dVsWl
X-Proofpoint-GUID: tQQ9DN-hFWCC9W5vqBZl1wL3KrTxobrU
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68be912e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gE7I6xvdJJFTcp_SK6EA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_011751_162209_A0320638 
X-CRM114-Status: UNSURE (   9.47  )
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

On 9/7/25 4:52 PM, Dmitry Baryshkov wrote:
> Instead of having a copy of the common definitions and functions inside
> the usb-legacy PHY driver, use the phy-qcom-qmp-common.h header.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
