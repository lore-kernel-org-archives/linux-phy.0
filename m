Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74F65C624A4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 16:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsupx13RPvvqD+n4GVVjdmr2ZXqUY3pkBzNjFD+ZcZw=; b=yFnGCK9PqWejiZ
	sDCCN8+XL1HOn3t7KqLtFbcXYlJKXfGRKFGhxHaSiNhT9puf1KOS1pPMHaK5798fKMKEvEiLd7P8c
	IuiAr9YKkJKZHxS7MI8uvM3R2QcboB2cFZVNNvte3FmZeU8zSTK2dIVScAApxnM/RLr1RczE225na
	UDegHBip/O8pTGlW4UvsNavNd/oKbiq2dUFBGpRz0ohrao6o4dbhPocCqY1mrZRrrWMqCHipdUV3K
	ULp2OF9Q5kSsJ9GwdGYauoyjCXSLwk3TeOGitwuY7z5pernseRUSqqLIEtt6o13rTSH45HkWS6UUJ
	wNr6HCoZ9T9i9By/tQaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x158e-0000000A6Hw-0WUG;
	Mon, 31 Aug 2026 16:45:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x158c-0000000A6HP-0S1n
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 16:45:39 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VFq99X305889
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:45:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I1StJ6DrwSXUaQmbo7/HQBFEJbOwbWv30eZXjba0z6M=; b=OKxOfY7/41ow87Vu
	DRd7kp/AILhvqgYcARM6FOsCrqy9WaGCtFgIRZb3VvwYxaWwaEiAvQXxXOtFLlgx
	Fi31ZGwNrQrPABjRDa0S3bZWzgqXibTyvRa/2FkEUKmfHo7uU+lhQSOqURwraAcw
	0Rb7tMA8Y+/mPWDh4ybH3I5nuBauYlGboy839ZKtEpibjTGZapEB7+NaQLNGpAOh
	8rXRpsL/MLdOnervZ/B8bsyyv5XfTLxWK/6hCQSPM/zEDJKRG/sqz7u+efG8fhYY
	bAVSimuOrX7qZ5nRhiQz0Bm+RCgrQPY1wEQs/nKfYXzYUCdxty/Af/6VDDvnaKZd
	/HKoCg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd4pmak8q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:45:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92e661ce1dcso96964685a.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 09:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788194736; x=1788799536; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=I1StJ6DrwSXUaQmbo7/HQBFEJbOwbWv30eZXjba0z6M=;
        b=gRpiveeHHAPZaPFV3diWVSKgdQZLpi7JyxkJwQdrtcUg0zjXjk7S0TWyV3C6xEIirQ
         t21APm2t+QUTsIySOo3B3iTfDU0LBY1vUuriHVHgMrs1+hbsthbPOImcXhRT0CDqiI2O
         Q5pmE/eKYk6aXekLt3rfRp0jwlh6PZhiJ0VzcdiY/P41ibf9CY8UDz+76Lt9ywGacxfy
         HNmBIgUGwQI9iRm8EikSweD8pyXfElBJxz9J+pyvQR1yzzf2HRdHcjUojygBJkOGPPzB
         hajjD3j68GGAlGf0Z3t1ayzMdHlS7WSaxck8OCGtf/Y8nEf0//yqeGSWenNDLqLf/fEF
         9tzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788194736; x=1788799536;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=I1StJ6DrwSXUaQmbo7/HQBFEJbOwbWv30eZXjba0z6M=;
        b=ktlihBHQTsKH+VxTOq0iDQU4j4Jx1s2orVAVrRk5U02Rl2cYkEIgkcp69PXkeLP95B
         Rkb5zFwDlA/wL3NTLXtkJrq4UWOAGwIGSsCEJT8SvElO/B1WVxCKivqAtUpByLtp1ipD
         BXMGqVeDz09Dr1CkSsYeEPsa1pwFZhj98boxAycyZK7pKudazIwLfbLe89auI/aTCE5u
         2PGDldUMwSfdMEa/maAeIYtxgGW+bLg8ld35ssTJI0m9a7Bwtdbt108AvK20SQCACnJ1
         CJXvMfk7yztG5tOAhTXFr2yVJnm3bC5fEdw1pm6zvhd54oQVjqoG+7tlG33Vd09bnPOj
         iK7Q==
X-Forwarded-Encrypted: i=1; AHgh+Rr3km3njBZykmXiZ8B13EGfCGg3aR9K5UTKaO8vO0SmDln0tc741B83wSrubbGhv8Lgy399YxL1CwY=@lists.infradead.org
X-Gm-Message-State: AFuF++l0zMSwD8AIJVRv2214UvKGCoiLxPk43/kRWcsnOGm+JMkFXIAt
	tVdTQKs5/sqNnHVUaUK4VKXlRiE9iYNfG4gZx0mtgSOkG82IwdEhvbP/xY0e/RuW+SvnI4zqaq8
	DD7UOtkwz/Q+LhRAwFCO/Jy7acnGjmRK3/kQkbP6gkQpLng4E4wmoKDh1o748Z6yRb9g1
X-Gm-Gg: AR+sD12IwK6HmUf5c8xy4tOagwPH5Qxx61xBCSxP96r5Powxjbr9h7+wixxpAXXF5Q4
	0GSHnG0XThkKC+sFRQo/tvnwExTNPAtUNXV0Ec/7n2+ZKadT6hjFZ84j2x+G9cpbDzOgqPCwODo
	pkRGFgqFEVthXwZQx6CBdhQDun/PH8zGY+IRO1TO1LWdpxisKBmyD4ZTS3qOMH5GWH4/pM712vn
	h9QJTUm25YQzsXCCYfEze1/F4adI/hkC+jCqOr17RvgaaTvHqE52bmDRb2uD92tJMwjgcBT3evH
	1wlfNH1b2DT6M3TQjRjOaD2ndM9usCyrjlttJ9syvlqMBPL/CWjOYYyIjCjFWvKDTU0dEjEXZR1
	027TzgX/+feOKiwoJZDauOw==
X-Received: by 2002:a05:620a:224a:10b0:939:3fce:1a60 with SMTP id af79cd13be357-9393fce1addmr285339785a.0.1788194736062;
        Mon, 31 Aug 2026 09:45:36 -0700 (PDT)
X-Received: by 2002:a05:620a:224a:10b0:939:3fce:1a60 with SMTP id af79cd13be357-9393fce1addmr285333785a.0.1788194735549;
        Mon, 31 Aug 2026 09:45:35 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2564e31462sm432886366b.60.2026.08.31.09.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 09:45:34 -0700 (PDT)
Message-ID: <65f0a137-851f-46a1-a915-bbb2ecfd7f93@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 18:45:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 09/12] drm/msm/hdmi: Add HDMI for Eliza
 SoC
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        linux-phy@lists.infradead.org
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-9-67843277de17@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-9-67843277de17@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: mMbNnZmhRiApJ49X8jXPsKIFD00tJ37j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDE0NCBTYWx0ZWRfX9/eNnW+Fhs7D
 87/m1brsdO7FoCookgt/WejPFHpueDTdSAE06JdlTXmuUf5h7vWfY/DlW0dR/VVxM3u6teyZnJ2
 DgnzhXN1k4oxVamY1PS09y886DsPgqMiFZRlZ83qGSPOZ3VXlcLpprn4m2az7LdexW1eOxKNlU7
 5UoAceGV3+GemYJSkRE8Gi2j4QwDpeU7is2nLyTmT+WkM63PhKG9rKlmIYGPnNJRK/yhCQXuIP2
 NXgGUhtCvQYgnRcPKguUegXU3wS+AAobvqadxUA/q7gcNmMBmNRN7g9gazbDyZQFab3pm+OCbLF
 HXvYBprwfCIafJeHrwrk3UheWarMzilOWplTs9tcNUAF6XJhX4PTeqEN0n9+MX/ztTQ8QLQb3Rz
 sq/oGLC6qPSSYoKHAMxZP4MIYzDrCmYGFtqPZHafbr0VvlZN18IZsoR8VzWx3t7GtyjWwbHNgZq
 MQNHWZhySzk6RZAfGhA==
X-Proofpoint-GUID: mMbNnZmhRiApJ49X8jXPsKIFD00tJ37j
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDE0NCBTYWx0ZWRfX9IbtxmSrocF4
 T0qyUo2xe01f2Zl5CTpkjzaEqmNvK8lFHjVcqU4KiKFPjAPyG0V1FdNoyiwPK023bpvEU5H6I6T
 zMvnQijkVSmKXm5fHc+Y5TF/7Kx4tGg=
X-Authority-Analysis: v=2.4 cv=GbQnWwXL c=1 sm=1 tr=0 ts=6a95afb0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=Rd23p8nNYRV-PgpY908A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_05,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_094538_271296_3CC2A5F9 
X-CRM114-Status: GOOD (  11.83  )
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

On 8/28/26 4:05 PM, Krzysztof Kozlowski wrote:
> Qualcomm Eliza SoC with DPU v12.4 comes with HDMI on INTF_11 with
> additional INTR registers.  The device clocks look different comparing
> to last variant of HDMI from MSM8998.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

[...]

> +	hdmi->pixel_src_clk = devm_clk_get_optional(dev, "pixel_src");
> +	if (IS_ERR(hdmi->pixel_src_clk)) {
> +		ret = dev_err_probe(dev, PTR_ERR(hdmi->pixel_src_clk),
> +				    "failed to get pixel src clock\n");
> +		goto err_put_bridge;
> +	}

Why do we need to toggle the source clock directly? Is the clock
driver broken?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
