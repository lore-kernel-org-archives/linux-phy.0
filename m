Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B795CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 14:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXoFhIvDEjG5+YqKbsFnzEQWL2yvp7EwrJdOMhHUG58=; b=CJX3ZsKJ35xlh4
	aghjhWgjTMaS+RBRAyJuHep7PWRPaM6u1y3ypB18T3S5wRTPUgGhY+oXW3XoNI/k5e+6kt55spR9D
	cz8K9fYlVdtSsFaYMs8hkq3ziWGpf3OYqi3obhtf+qp4CG8g1uEwsHohqFQv2Efi/eWyRKYuxBk8g
	lCVKEahZ+s44unIdSgDTxNz6S8Teb99ql44PdfAXTWpsWXWVJvQnmX6/uewnB/q82CaMn4443M5EF
	WMySAdmXD5Uzs8uhvfwQaSUskLdDiWZ9aezGmDTzezF952FghgPfqaJdEfMhW/P7hPKJiUY0C8Szc
	IIMvj0hlHKV8Xw6RoGXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGb6-0000000AdBH-3u7I;
	Mon, 12 Oct 2026 14:01:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGb4-0000000AdAG-17P3
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 14:01:47 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC0asX2679899
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 14:01:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xRffrSm/hTCfqJYTTAkUvuKQGsX5x5h5c8d6nqDnnZA=; b=WBHn8v96BmySlV5J
	ZcckDIJSs30babgz5DeWI8UxO4Fbpnv9ogSFdB7qLcAIV3YB3+Ap7BlibnqkLD0g
	SjCknaWTgwahDtDy0tcBE6QI96oSdNq8/npREjQus2oK9wJfsFW7Yk5FQr/R1hyF
	YP2Axpl2uoRMABKagAvmxB7AE4sYl1/1u+L4hVOzwOp8Mh5YPXdrPhhOdvpqCP+f
	v7ck1UfANyawbtUZA77n3LjwRyP95n/qGTkJLsoyQtkLRy4IXCMDlMs10Kr4oR6E
	NnH25tD2zQ3Nkc3Tn/HYc+e/HWOYivMIHz8lU1JchAKhuhvVldh4fpVcNvqmNGqN
	E0wP4w==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8sd1t8n1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 14:01:44 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5d44237e2faso50001e0c.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 07:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791813704; x=1792418504; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xRffrSm/hTCfqJYTTAkUvuKQGsX5x5h5c8d6nqDnnZA=;
        b=g6raJ941TOlguzjdvWcXjeggfQJcrN5FYpicWRRo+s5bLf790zGfTPk0V0ZepNZ2ja
         XAOp7FuEoJwxj6jaHxIR+yI9LuC+WCKM7EnhtsEH9h3tCrCTFd0HHTmOTIeYdaF4rAbL
         oKaVenEY6T9A6gIvnAv3/6/VaBmrBKkRSyz/GPh/yrvCMbTvyqKDJGhGisfWdUutqIni
         v3y35m/qBPsWIJgOct5iG7s1NEbxNwDP70fjOcKIuZRgU1j4f5k9Zq9qW00uebmUgDqQ
         rIRLuYftve+E9nfBYsfbiO7+gIW6K0eXasm9aHbsLyHd0gwbSDOtWjOBGwIcXgLz54ii
         VDJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791813704; x=1792418504;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xRffrSm/hTCfqJYTTAkUvuKQGsX5x5h5c8d6nqDnnZA=;
        b=Eo+5QryXXg+pCvtAA8Cj807vOCQKWazWy8Sf3vymZ/O6BazDVRK7zHavUdrBc4pa7O
         Q8bExoyHuGMMFP6hZWgDvP6b3k/bnO7NXBTXDIbyNqb4FlA8np0b9Ks3cUFuG0dGmcyQ
         FW5Cm86R6/qz900aDPL6UG7zgXYtJ//ur+6P775S0Kp2fpQWgtFFWXrj8Bev6OzBO2NS
         qsfvzQzwEy4IvkhJuLjPFuXpzGYfAt8QV37z3WSBUFXeImkO6SxUnpEXRrrg6LErQEra
         nJp4vgp1TSt3/zkVwvad99bA8w1GCu5pEqH7M1Hc1M51WVa5VX1FU2NJSwzlpLYFkTLZ
         oBCw==
X-Forwarded-Encrypted: i=1; AKwUvBzlGadTHPQS7gIvt9SD5t44Mc7nL5mx5a5Wr1HKvXjq7y2AuIfzS9t3V8SytR4OhxLBpUnIyiXXUkg=@lists.infradead.org
X-Gm-Message-State: AFq9FYJrI2snljPPqzgxdggnQWsGPKeEmQ4CC3YeScFcAem+vH58remX
	0ZwunZmPHsrUndGAak0/iE5FP9DXlsDHoY26INraeCfUWSZB4pHpXt8B9Gw5VMfAXbsjpf62Xgd
	0kXnDCdn+7dhWihH+ep1xPdj6P6J3uO9GqT47xtztB4ufQ4LxzbFxQ1rV5pdrskujMAT9
X-Gm-Gg: AYBFou0uGQ4kqtnygetaeH8VId23zLdNvsNEXKDFvQfixIlLV/nEm3is/6+R/LxHjcH
	CsMYPyKhBIonOFx0lTG3yS+HQsQdeKSaLCFcYIa8GlNdf/dgJzVLi6uxJq14TQxU+g+Um+R4i4+
	hISm50btnWeckgSrwQog22qYoHyATem2eDpGLUvOLooDSrxlEEe4EF5ILkUcphWigiV3AHhXIKg
	wY+D/tmDQn7n+wG5lmfftupWTS9bKuPjqGAfkna2axtDwhVD2OALR6aS2DANDSyn9oqtTAbKRsr
	0xyRIrDYI/1LetbEYUcmdQ6poLE9ufeKzPOCpGVUrAreHJ8rZYrWjQTlnaDGP3/0Wzmy2f+JTVv
	1sgQQjsROlGnB1C8hOJQURw==
X-Received: by 2002:a05:6122:a5c2:10b0:5c9:fe51:53d5 with SMTP id 71dfb90a1353d-5e91f242088mr1786253e0c.1.1791813703971;
        Mon, 12 Oct 2026 07:01:43 -0700 (PDT)
X-Received: by 2002:a05:6122:a5c2:10b0:5c9:fe51:53d5 with SMTP id 71dfb90a1353d-5e91f242088mr1786149e0c.1.1791813703157;
        Mon, 12 Oct 2026 07:01:43 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c338d5b170fsm237486266b.75.2026.10.12.07.01.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2026 07:01:42 -0700 (PDT)
Message-ID: <04672b02-cdf6-4719-a17c-4f7ce95a98b2@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 16:01:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/13] drm/msm/dp: Add support for DP controllers on
 Nord
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-6-a2ab9af954d2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261012-nord-drv-dt-v2-6-a2ab9af954d2@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: HPOhkievbGxdnN9Pl-Z2-guuUk2ST8fp
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1NSBTYWx0ZWRfX+7JLZ+s4hqiA
 qmizShC4L/PTbh77YlVPw4u34jh01Akz8xG5g+0wBoW6jgGXHhdU8i5wc2tz67J4VtBFpckf+v6
 dtfR3+cNJq8lC07FbjxHHGzAiPiNC70=
X-Authority-Analysis: v=2.4 cv=QtHLTlyd c=1 sm=1 tr=0 ts=6acce848 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=rMXm0_BZOgqvqhzNPSsA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-GUID: HPOhkievbGxdnN9Pl-Z2-guuUk2ST8fp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1NSBTYWx0ZWRfX7bmwHY6uiFyi
 xdLSjproTsOJYjOYmqqXWO6MXrYLpruXS0w1tEEsnO9UZGVePjqx1krtvzsFctJEWf5Yk2aENGu
 t9X7zwbTE7vZcL2t+Ywz4IoPMwal22wupvkc2FoXMGIgAmBSfQpNqLvDAIjgGS+bxbrUMiAlny/
 JaIGPpmhwfI477WtiUmojBcgsW6llgAANLvihLlzvX7XC+nLENXljiDU47QYT+SmH+f/xWc3vOh
 ls5cXs7ELrlvP7tQpwKExiSJ3Yavk2bZ8trfO6gMnAUfnuxtCMEYLPVNY6THkUiLiGj2n2jNwrZ
 txprqqwOTknKa1l9miew5hJmUmJ0FZyvoMfGTWR5NRGjtxkbMVrgydh3RVQ6nbzm5G8pzwKrlEA
 edUOo45ES83xsYLPiIlmafdYOaEc38H9GoPsWJJNJIQQtCMwzSgYMRFM2kbE0SbVbYLi7xDBJsF
 WMCzRY9LwfsOtfah1tQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610120055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_070146_446520_92E7C700 
X-CRM114-Status: UNSURE (   9.40  )
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

On 10/12/26 3:32 PM, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the Nord DP desc and compatible. Nord is supporting the
> four DP cotnrollers, two per MDSS instance.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
