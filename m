Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 111CFC53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmIZS1qesyIbXHF7Aiv7KDYADZUhF3AQsLuySPKQV94=; b=DRTGvprdIc/ErV
	//x6T3bKwfq49wu2HZyNBUBJ9I6tKAcilE+d+1IMu/Z+i4Ld1rVyIYuPVsCKMdzebOI+g5d95CEjA
	2NXX9ZJ7zmawJKwiHROgfQaQPFyA/uoB+IGwzaYXwt15NMelda2iq69NPSGYTk601bToqrmOQbkwE
	nDZtPZYwdi8zbN4+A2uKgJFwYK8x7IBbDduBJZlryDFnwyk8rblKL1kvUPKs0/ez4jpjelk+TH6ug
	uVm+THLPLYMCv8cHSBSt5j6440PvAVR/bTBCxhtf95rtTmCFYdgNAjyjocJQrg4soogj9Hu1q26qr
	7FnxLXnFMtOFCn/DA+TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofMb-000000050vf-38kH;
	Tue, 28 Jul 2026 10:48:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofMZ-000000050v9-153i
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:48:44 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66SAggxs2449586
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 10:48:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mYrJRtpE/M58oknn6w6g6s4C
	5iZ5GXjvqTFr0fKnh8g=; b=Rb3RRpvNDCVmZgKAWDSILLWRAEltX43yQo8Ftzdh
	F4DPobVjgY/XhDNK9SmMEpx2id0sctqiUSNakZV8T0ptJO5SrHGhg4LJn5mJLxM0
	GvhQVSo6EOoIiHzB0cV9zf7M098wGYb2w/l6b6ZAMWT2zsgyxyYmUi+NtZOQ9T9E
	tSADJ9gP0qALRepBxvRL5unRcZcv7aVSZvtwHdp1j/E8J3GWWqONVqgUBsmyuAZN
	92ftSV6Uvl7WwSoXx5nibWv0/H/32z38G+tQjCwwA7H400BAA21UZ8Qr8w0ToNxr
	WyheF9UfznuzcRxnrsFFhEzTzJ2xIcawzreNt11gf/dH5w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fpqxjgtn4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 10:48:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c083f1818so44285121cf.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 03:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785235722; x=1785840522; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mYrJRtpE/M58oknn6w6g6s4C5iZ5GXjvqTFr0fKnh8g=;
        b=HKIbHPaDK/5+/BzPAlK0tDrIsixIRWEvD1jgH/gesOuzxC6u23yENHjM5c1jCfR6iR
         rd3QeZrsVhUdcaUAbezjT2zf6+rK0AQCEoQoUj0/RnROvn+bPF3gvqQ97BL1TnpGVSiW
         Dln1QvDwi753GgSzuv+do2+ouaeFLp9RCRmTMUwet8dGpqEeGfYbZkn9JgUrZ6DvxQ93
         0cJaHnd3s48zibqFyEKkcUh6etebcGuEr+W1k/h+/e7njOyXplKByffz4TEn/ScfX5iz
         JoM3nmcTiZaPOSLr/3Bfe/RRvUih6v0b8iYUsVXrI1k0OK1POFr5satVHVhfxSXCOGJV
         BG5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785235722; x=1785840522;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mYrJRtpE/M58oknn6w6g6s4C5iZ5GXjvqTFr0fKnh8g=;
        b=foTAGomkAm60yinMig0S2eXZw5bK89p9p6NW0mqhX+QavTg7ldcKXTJXDSLQg38Uky
         Ygy/XEWIV0TvQcKuQkgm3zqEJYSqUSR8YDM3VgZdJNTJQmMzd8LHEPxegwUgyNNPWrL2
         1Pdkedwblkr0zG3OHRnSQiTLxok7nnudjjJXBf5Tlj5ZoB4/AGfunNgMD8y3h2TI1G3/
         MZayBzeEwGzxLBKNm0hxA6zWpQuPTw8AAbvrmOFTyCHWBBdMgOdgfFl2mQGGbZPrRbLi
         P6c/alzFyRmGR1a8mGZVvG/A61HeAjbMDcp/gxRnqfQcAYeSLYYCW9ZQnuTFvIcKHXiK
         r89Q==
X-Forwarded-Encrypted: i=1; AHgh+RpyY7P2Kh32wB9+wmEJotj6094PdeCcv5eOxs2kydkMuqNinvFu3kU1Si6FtDeTEesOj3aocmWnqb8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAjdT9Q+daq5yihkiX1SSez+RMRymDHJd9RkF8d04HheG5YTLF
	kccRwadMIbnhrlfAuEtpIPHy1+temZz3mkTI8niqH8RFMx0nSSmRVFIsx3xYaTFZJUr0EsqabO7
	hUaiYDNEzIhZtWZ3hHvYeEENom3KGb84uVSwFdcxT3jFBHe5iuc7rmRa1ggcivJdATviA
X-Gm-Gg: AR+sD13brF2WInJJ0p2tsOxq/8R9kZhND7V9tGx0m78Ha6/OTEKJaQQcU9RYynEAysR
	YjjUPrZQPm/3VfZ/YLiYhsmen7+GIPsPbw2M+UD0CAag9kMtoxOeYvKjZiMTYWC2h/+myRg0FP0
	WDdmFuRRJ7zrH/FWnqTw2S/yqg7DwyhuukMzZ5G2WJggnOv9qq86NgzGWy2LmXNSf9zaR5klnqO
	aI23rVy2NA4bg3yWDa+P65aMJHA84YYArtIApqe/HPEsSnibpFXyg8stEkATCYLoswYyIIBUSbs
	Nia+5w7nvxXyRO9owyN9dZIVMDI04q0p89UFQ1EDtC+zOIbHXMDKq4bTK4vcr8hP6f2WIjKwvaN
	HBEkvallWLOwJF5+KbytJpqy71VCXKQuruKqrfPh7V6qdmacf2Xm28ObRhaBu1UuEWr6wXnXp1N
	Or0IAlk1tXPO+FLA==
X-Received: by 2002:a05:622a:412:b0:51a:8c9b:64a1 with SMTP id d75a77b69052e-529d7169f3amr14419981cf.69.1785235721535;
        Tue, 28 Jul 2026 03:48:41 -0700 (PDT)
X-Received: by 2002:a05:622a:412:b0:51a:8c9b:64a1 with SMTP id d75a77b69052e-529d7169f3amr14419721cf.69.1785235721070;
        Tue, 28 Jul 2026 03:48:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2be1f9721sm1917162e87.76.2026.07.28.03.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 03:48:40 -0700 (PDT)
Date: Tue, 28 Jul 2026 13:48:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v13 3/5] media: qcom: camss: Add support for PHY API
 devices
Message-ID: <jy2gc6ojh3sh2araz67vdk4jo6wsmx4xamgl6hjfuqpdphxxjr@aykdzj6ewhm6>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-3-ae811e2f0799@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-3-ae811e2f0799@linaro.org>
X-Proofpoint-GUID: m9JGxQu0Q3s1AesEN5HWSZJyi9Ea8AKw
X-Authority-Analysis: v=2.4 cv=MORQXsZl c=1 sm=1 tr=0 ts=6a68890a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=SmOWCKbkXSXCNfC1NdcA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI4MDA5NCBTYWx0ZWRfX1qXfgJKW6Mj/
 UfomH58dl6NmL4ncOtAOKOXqF3wW3beTphVF5vfZLtVDuVLzUs2fH8FoQA6haS+7/NxsdGqROBD
 UbMkECqno8bb/mXR/z2KiJsopEvv03A=
X-Proofpoint-ORIG-GUID: m9JGxQu0Q3s1AesEN5HWSZJyi9Ea8AKw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI4MDA5NCBTYWx0ZWRfX6PKKlkNKpu2o
 hmpCS4on7sNj/wOHHJ9HLFnKJ17Shd69zXixxh3fJjyK9+nPg2z1zmFSuGJRNg7SoECeAeyobb6
 8lfGqG7XpaH+S4JwWBWGVAjMcIxbFWPfpT6VUCicR0rFPZ5iiIlPLCyqSwXFmiTGiZ5pzkLQMMX
 PjyDixkqgRNlK/AJrsIozmJi23E9XQYBZMSBvuoauiU8NtfDakocmMY3J3FADQDdJZcT7xKiniA
 dsxAaHIzvVvrhy6jkNMuJHQTSVghukQBuiDFH7ah5VHgGYXCD9oOn6mXwthr7z/rYeJvwnf+k03
 g/rYc9n+RYib4/dMtBvrAfm8f7SUA9Ole1/1wQstIhFM629EJas+xlgO+o1lWZzTp6TLh7cDRDt
 xF6vHmfYnda3lnxfW27IUji2htsYGIV3nZfONLB4rJBYY4XvWDA7Z0alpbuQD8eaAE0z/vPWmgc
 5FimyJAKXfcMeb1+scA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-28_02,2026-07-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607280094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_034843_297940_0EAB14CE 
X-CRM114-Status: GOOD (  15.85  )
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

On Tue, Jul 28, 2026 at 10:35:34AM +0100, Bryan O'Donoghue wrote:
> Add the ability to use a PHY pointer which interacts with the standard PHY
> API.
> 
> In the first instance the code will try to use the new PHY interface. If no
> PHYs are present in the DT then the legacy method will be attempted.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  drivers/media/platform/qcom/camss/Kconfig        |   1 +
>  drivers/media/platform/qcom/camss/camss-csiphy.c | 177 +++++++++++++++++++++--
>  drivers/media/platform/qcom/camss/camss-csiphy.h |  11 +-
>  drivers/media/platform/qcom/camss/camss.c        | 104 +++++++++++--
>  drivers/media/platform/qcom/camss/camss.h        |   1 +
>  5 files changed, 263 insertions(+), 31 deletions(-)
> 

This is nice
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
