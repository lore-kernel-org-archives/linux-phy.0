Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23C74C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 16:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwU91p4iIea4J/IyBRb/DFh+czicSTbP5ndaj2FeGRc=; b=m+tOwEfc39oI/C
	zRrcTZnZLra5GMimv2S/5IiVVf7j9Iy4xV7z7YwnQSTiCK3eGEwfL638/gkQIki+pRclTJemmYubM
	SmyIBGAYRs391cNst9l33rHMcC/3M72OBT+QzgoiAEQDOe5hgLa3I8J1BgGQhcoABkNafI3cujBXr
	lbiwKpBvtz80WObqaigNDRNDtNlV/nyavYZ36jXSOudZlBldpeFtHmK2oNBaQMEzp5Ns5FvDNNEH+
	LTaWmzlvjQ2uDMGIw5+KHBB4DptlSWGBaGfYDrXUXFW/uckfEwaDGKLIGvKAK7wS8osFq5rAC0Z7u
	75AD2HZSvn9Vmw9AdH+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x150X-0000000A59F-3SDt;
	Mon, 31 Aug 2026 16:37:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x150V-0000000A58H-0pym
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 16:37:16 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VFppeS3477053
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:37:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LkOzXmv1woFoeQJtIpxPXxYwsR0W1dreX8GPkYWvKdU=; b=oeLKCJX2IWEAz85m
	uG1dKtptaCjTthoJ04PWVxyhFfstlQhOqXXSQ2qnsXmp9lUiI9Mlp2K77Rh/z0UH
	VnnAV5VTw6xw3Mv2TvhLQsNjAs5y6IvG/LONYJO9IdJw21hiP6sBB1fi+xPuu5fK
	OgmomtYR9ppQQB+x6ZHf/aeyWpQ4LGjItVST8h/N8mPAprzVj8VpBR8KCU6p8Kii
	EeJAneoi0Ux2pqfcC7u40feK3V6Q2kHljRvQX5Zs0dPSXxZCLDVEh/SGBfRe9kU0
	ULBWZ90U0c+BNnp2qfG1JKTPSXB32llp/yXRm5wy8lxTWglAJz/MrIKaoXTC+MSa
	ETs9iQ==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd6ayj1yw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:37:14 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5c673f01b76so96962e0c.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 09:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788194233; x=1788799033; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LkOzXmv1woFoeQJtIpxPXxYwsR0W1dreX8GPkYWvKdU=;
        b=b8HbSuFoN/qXCfQ80fMx0YBRs2DtKs0yqmqxtorBMmVOexUlOXc3BUzJ6mea/f0PNJ
         6B0d17ex0COb/8xcSJgvc+2xtpISbtG3TyYjkDqUT6x4heMxTWWCiIo3BsiKbm9ArKmE
         Q423fKr6YwbWj+eUFtVFt/ohf4FUkBRNGFCULcR669/8gZJfz7xIa4WPmhqy9pk/PxRQ
         GG4SgvvuItkMtZJlQz7jhfdvO3fzkDnJcIiZdLqovk5XDWLHjeLUropEykgeGeJQNSHb
         UsJprnTqxrMyFgvcNQWd7S7CwhgRzimI72W/mNwvvKA1xzQhBlUIiBslMi9vQHTuN8r4
         mIBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788194233; x=1788799033;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LkOzXmv1woFoeQJtIpxPXxYwsR0W1dreX8GPkYWvKdU=;
        b=K/jkDTCJJmpLwI9m7GcEdEbkVSZZyDbNsgse9KW0ga/T3+pmuuHJqibSC8C0T0Kzsd
         OY+ZsjqHP7oTkdgv+ptJqSR8ZSXqPMJzTzVruU2rXZrvrBe5x9jXrHc61gn85xgD/yWT
         yUK3aGV++H4PcBCcEeCq3w9hMUeE6YCusxFXdt7pbS38SfevH6At8tYKomfUYT0vakmW
         maNDfvgArKnVe9M7xLXxLhw3Yh/BwClzMkFS+b3GHi7JBwOS6VOA/aHE2QAodv+8V8qX
         tzOWk525gepIuEcfUBSwueTtjjnIVA9dRPwpM1SMJOlrOUfw2zos8KxZN6v8i06gmHZL
         H2Cg==
X-Forwarded-Encrypted: i=1; AHgh+Robem9awxGyAOqmJMHHUW+e9s+C3A47NsG1jjxATW/ddFcFfi/ERZVRU+aP++P+mO7snZ0RAzg+bW8=@lists.infradead.org
X-Gm-Message-State: AFuF++nOs8rxOdVKF89OJB//k5EEJ1h+5YjuVgA12IPWTaDgH3g2ZMiq
	5W7D0jQEjas2EL5L6gcl9sJF7VXOcJTZkSFj0uxFdbmAFWZU1Hei9vXE7AFeCFYH9cZM/Gv8Z4c
	IVF7ao/CarAnYWnqJ5mVgNpmZx7IAPrWuCBLhyX5C3D/eM+LBgQpKrlmWVkq9KKwwTZGT
X-Gm-Gg: AR+sD13tgwgb8J1FbHGyYgWzPwXvlSd80ANuQdecGbQ3E/gPrhZtJQPvmgXvmjFbXhN
	HcWjTfSyyIEpBqdcJYzbAADlViKMtorGtFwu7kDgInQxHuVNKEMBVojA/LR4zNvlGYYRrH6iyH5
	hdzKWl1GFnJ33Mj1LG2Wcl490r2K6BqmL8s8rErtZ+QC2Dbw2Yl4rXjIErGYMK9t8gr9oOs1IZ2
	lnObWQZcIvmfWKV6tXGdGjUf3YMI+Tuuf0ZrzN2Bx1w3Hs0vS28pLm9oNt5QGh20swVRipbuW88
	+amT1jeXugmCl0lMF09K3Dfm10S7ex+q0y4bG9h6NCrISxw/z4a2AKGDo1ShNd6TeeEZE0UHr+0
	UNcSPaKQaRizsu7p5XVedxQ==
X-Received: by 2002:a05:6122:6b0f:b0:5bd:9cbc:93c6 with SMTP id 71dfb90a1353d-5c68096658emr4135468e0c.0.1788194233602;
        Mon, 31 Aug 2026 09:37:13 -0700 (PDT)
X-Received: by 2002:a05:6122:6b0f:b0:5bd:9cbc:93c6 with SMTP id 71dfb90a1353d-5c68096658emr4135459e0c.0.1788194233165;
        Mon, 31 Aug 2026 09:37:13 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b5e8a0ce53sm2391683e87.59.2026.08.31.09.37.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 09:37:12 -0700 (PDT)
Message-ID: <4741e7a7-b6c3-4e5f-af03-d0121dc228a1@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 18:37:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 04/12] dt-bindings: display/msm: hdmi:
 Correct name of disallowed supplies
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
 <20260828-drm-msm-hdmi-eliza-v1-4-67843277de17@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-4-67843277de17@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDE0MyBTYWx0ZWRfXzinaP65kfmSi
 +F0bSHmjRsp/B0PYxF+dWTv8PsEowMRNXVH19YVF8KHc+EmzqhgEcwnDDD4d7oZUc+W+r3IEAyd
 2Xw37lHNcQjog7SDVSdc4VtS2FrHNJw=
X-Proofpoint-GUID: KvqIzsdvrF6Rb4OEMhc0NvUYTc4cVSRR
X-Authority-Analysis: v=2.4 cv=CYE4Irrl c=1 sm=1 tr=0 ts=6a95adba cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=JLRh7K5kIuGMceoZOjoA:9 a=QEXdDO2ut3YA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: KvqIzsdvrF6Rb4OEMhc0NvUYTc4cVSRR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDE0MyBTYWx0ZWRfX2t412Pk9hYw9
 lg2JcUnNnoAo03H1uSlA3rH8P8r70OBXdmVAja9vt9UqPGX6osB43MM7HRtKP/Yw1fBBi/m+bCa
 btoh8VBTNWxTsi2kyDkyfsBvJVyk0akZiD+ljLjGJJQ+6W2iZx4CwYbzsoeVF2+PyxB7A8lrh9E
 zQ7DvWxCDaTgmXODT77HhlGVhJRZwH3+Z1VJVrTZ1Qnuo/43247J2c+BDzwViMdKjVzsiGUd+nR
 bOISjQ0bDNr4cv+V81vIxU6sXCsOXgjwcf+cREWovzAofTwUbsQZmHFLa1aJUXFOKxeNXnnuwVk
 DL5lyPqd3Co2XMTdS5UmGPwrgtXReOYOxdqPBAL+07mtOeRMnkxHZnwLDQdz6ptoe0F6FpcMspr
 Q0tMIJSA/GZ6Tyu0F0YORa0dKnjZ9n5TvZ7ITixw06Z3l5fmF6A7xT3jV8trDiiDGFfDONPC1EW
 Wq0k3RiyyNLKIgUfzKQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_05,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_093715_360563_2BEFC5A3 
X-CRM114-Status: GOOD (  10.74  )
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
> There are no properties in DTS or Linux drivers called
> "core-vcc-supplies" or "hdmi-mux-supplies", so the binding probably
> wanted "-supply" properties instead.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

FWIW downstream only seems to have the PHY/PLL supplies for 8998
(or VDDIO and VCCA for 96). I don't know if the TX block needs any
power other than the on-SoC power domains

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
