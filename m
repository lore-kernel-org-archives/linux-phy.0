Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A266C5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 13:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Lbu7CTbRgR5op2tZt55Ob2dRbFgGw28sB7VpNvAkgQ=; b=5DHjrLEegaqfTv
	OpZl5tKSVjNZb4ozP5JxhzjIchT4ISeof8clzI0Uw+KHmcj81OVHQTTyyuDtuHAOQPJ/2NjzOWk2d
	E/71/9BlgqSuACJwdu0f+k+9DNkBmlNXgBmSDVNtay4ntbqLC64bSHGHCUeNUDTvhOqZgOfHO36Hg
	iT9pmdMWcJo+vXLB2DqabwpnnO6mgQnF+Nj0VRkRCENuFYiYxdO+Mk66neNuQvzHsKqb+W2ZoY6uw
	v/BtI2AXzZ/n5RCh/WKInG1emDFVfZltCgabaezK6QhxsgkXxUxCXNmZ1a1Ohz/ma6mR9pIHh7CXK
	g6CmhsngF6nZ7wznYM5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUWm-0000000GgFo-045m;
	Mon, 24 Aug 2026 13:15:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUWj-0000000GgEq-1Ir2
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 13:15:50 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OCvAEn2950701
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 13:15:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LFyU3mWvGyLTGThD9sv/hYIL2x60Kcu9mNScGO/gTbM=; b=WhICT3HHIExyzCtV
	yAy9/JcDQdv/ppry5xEJz8pokJqN4it4ImK4E7TBYrW49PJTKbYCRlpRpfpgstBP
	GxelFVEYqNMCEqtLU1giG5iankqt2tUQfbqOrRkgCEJYGOQNrqCCxg18ITPfycIT
	k5YmTK7CiOqIAOFdWqoXY8Xgs1IrOPPDf0S2l4uSijTwoOfJKxnG/kt9y4B+9uUc
	VY7BKZ921WlkaKIbXdnZdD+TTvpopik6e3/HzerWSffdGnI72OdetV6NlGi7B65x
	syX4yn7EVIXjE6KBqtD8bZyAR+TBxWfwbfjm8pe5qUsKOymDfYtRuFzD36Oo5tVG
	ohGYlg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8j7r19p0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 13:15:48 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-77969cb40dcso55148137.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787577348; x=1788182148; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LFyU3mWvGyLTGThD9sv/hYIL2x60Kcu9mNScGO/gTbM=;
        b=Udne945yW3Lq1FkvNHURnQ/l5zJdwxzoCK9UtnZr+jGCqrPESpKnKg+23c2vjyWUW2
         8qewQUyGcUej0STmLBAoFAmUsWZUMDr3sz7Ltmrau6J9fdXW2qSSLRSzz0tSHhW8m3mW
         qb0b2fyhHWcWLBiT7oeW3Dx0vs7Qdos7WBo6fNHiPjiS1dt5sEAXYXWRdDJvMnHYbUex
         4WgTjnJr0ALAtHNjhhKCOtLpR2Tn1mM/GfJw5NtwdgKVDkcEHUeMC4AA0+OnZ28ImTYc
         3R07oTgACOxQqYxjgBp5m3GfaSWh8iUFOtHZQKEiDO8GbcLA3jtsNbvusQGRZ7YCOl4B
         PGMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787577348; x=1788182148;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LFyU3mWvGyLTGThD9sv/hYIL2x60Kcu9mNScGO/gTbM=;
        b=D06jWsdIINyT2W+VGkfCKksW9E4lekUNu+v5+IS3+c/LJU7JRkG2KLcNAxi3AXrE+6
         a4m7Va+eDTRxedbu+FuGPVMcQKAXRWedm9hoeEF15xU/qANUv2mB/qy7s98motAYOK+J
         yb9EQ74xj4ejZBaSegWByoEwI4NNliRAJfTUv9GqSjkF1nXMjTNKOwAsopDmoFmXbDLm
         X1GJE9IaaOmtZ9IhSUnfyx+HB5q33mRDp8DcWYEVPEBi1aWzj5/TLNOQjh4QoeyOL4c4
         5BTzQBDMhxKoZYsGIH4qgM3BevIdSlDZp79z5j/OktN8njVuoBJvq11/ER2kY19VhJHk
         YTzQ==
X-Forwarded-Encrypted: i=1; AHgh+RrhH3E1qyGmrqaDHJBAu+OKxo93hPdNjZw328ZoScdo1CyLa19teK2oEkE8mQ5Jg8ZF1opSD78YC+Y=@lists.infradead.org
X-Gm-Message-State: AFuF++n3vmclvdgKFvJos2JkYrlNa7Qa4Iovwj53Y4WyWsFeYofQuex4
	cx5ueg/3r3r8LSDWEbdCUFexohkawxFE2SDghOD2K1mIietP1ZScLPFtzT9MeLeoKIFZx0dMANF
	2cLzearTIUf+Hy7xP+54AsE9nF95xQypBHK2Mvddy+tmlyPwyRGTkL7Ne1BA3wuv/hctE
X-Gm-Gg: AR+sD133mkqNn7/Uj2hBpp8fC0gG6/LQq0rzA2gEECN6O6Fncxv3Z3mR1obB7QH77UB
	Cjb0dUnjG3k+qEvQaWr44X5x56yCb86XedAE72cwFXgN4sxuj7HvdPkZuK+v1prtZ+2Cm1ZnIqZ
	gSmBMhW+3HRUp2taam9QtM73K6gxtrnANhxrtshpVc+X8NzfcS8c4mv6hS6kDS+07c4mV76Gy9z
	NiV11Of3rT3KeBFRcRMi1Yt1GbGSiRACJHh4F90e/lSP6zkt8KL6uYAcmxh4j8XQSsng2YAFf4v
	p5EJ0xAajjsUfqE7Lkhf0hVL0RcnXA+9uID9zgOd+TmiagFRqLkw1dn45FSjUJRdSkbPJRASVFP
	/XV9LQhQJN+kCHT1EMYjuOSU6
X-Received: by 2002:a05:6102:d8e:b0:778:1bcd:ddc0 with SMTP id ada2fe7eead31-77a5f8ee1f7mr3817882137.0.1787577347799;
        Mon, 24 Aug 2026 06:15:47 -0700 (PDT)
X-Received: by 2002:a05:6102:d8e:b0:778:1bcd:ddc0 with SMTP id ada2fe7eead31-77a5f8ee1f7mr3817872137.0.1787577347380;
        Mon, 24 Aug 2026 06:15:47 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b48cda2b20sm1739539e87.25.2026.08.24.06.15.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 06:15:46 -0700 (PDT)
Message-ID: <315db50d-6553-412d-8fca-a4b4441f881b@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 15:15:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/msm/dp: skip LTTPR init when no LTTPRs are
 present
To: Saurabh Anand <saurabh.anand@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-3-2825e5bf8a96@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-3-2825e5bf8a96@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDExMSBTYWx0ZWRfX6tsFOA0owKZA
 IQdPlgV/HteXteRzWHffjYrD9JLkVHpSQgLdRnR3QANY2b5xURef7NQDAFTuinJr8GVkHc9Ve9c
 si76lbU34YqUS7el0qqKpmiMFT+2wKix/b8zrps1mLJNR5v8VD7wmv+cXk4kqwYiCXIebUod6qu
 OVh527Dh0N+kTaCQetE7K0HcxikCkjarLDlGP/7Gy3cMQXFCrb+/85YiErzljbR4Po9OxZomCXA
 anWw6JFj04KO3m6t0BjWzG/wEPBw9zRp0J/TKj+9K4SELgvZN91NS68rYVfygcrtzCNZEIhVHVT
 ndAperHzxr/jgXlh4dqjZgbj5Y6spE8enjMzv4dkMBdOt76pPatZRUdf4BaEPTTCTNQK7eV/h5X
 xuPWNNxfaquwKdhCp0vwwXl24kdjY1oqlH3dcIps3uTOCKZcvRZAHN/Rfrff4k4yzifplheGkNA
 acwaozoLyHIpX/VK/NQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDExMSBTYWx0ZWRfX9dOZjZtakAA3
 ju50fHRw/SSpjynI9OSiZnS4INSFweSseQ0S9Gmwy7gQkjoOrYWxjxI4CpLGV7cLWasEIgSKCLW
 Ruemy3uQgmcu5V8ykDKjsPrETITqeqU=
X-Proofpoint-GUID: T_Pe23GbXF3_wyzTZeGbZl4xQFXzjUZy
X-Authority-Analysis: v=2.4 cv=IL8yzAvG c=1 sm=1 tr=0 ts=6a8c4404 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=HlmmvPtyU3BZVRE9FHQA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-ORIG-GUID: T_Pe23GbXF3_wyzTZeGbZl4xQFXzjUZy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_04,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_061549_471150_4DA59401 
X-CRM114-Status: GOOD (  10.76  )
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

On 8/24/26 1:28 PM, Saurabh Anand wrote:
> drm_dp_lttpr_count() returns 0 when no LTTPRs are detected and a
> negative value on error. The previous code passed the result directly
> to drm_dp_lttpr_init() without checking, which would call into the
> LTTPR transparency-mode setup with a zero or negative repeater count.
> 
> Add an early return for lttpr_count <= 0 to skip the init entirely
> when there are no repeaters in the link, matching the expected usage
> of drm_dp_lttpr_init().

Reading the body of that function, I'm not sure your statement is true

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
