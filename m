Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 323AFC624A4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 16:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+QGoQMbVxTgWHkTZHgPaN8vVCF/T+vsLFi9IlHbpyc=; b=0Zhk84T0M9w8py
	EYNxBGj1ftqHyGdy4xdtcdysOW1bXF1zr/9u0+WSEWBDSHcY5V3DDu03d0jfNw744yiB0yxZLIfs6
	lo8XXLItjSCLBXi8uI5WEJysbp89oRlgxu6AWwqiuyk2dVtX8d1F5MM334ULJ7CxyJOzJ8jUwVPXy
	vaWnSHosC8VM5vXcvfML6aZG2+70a28Z1wMMa/yusYg06YcCagc8LMM51egb5BAQR02JqD4w9z5kj
	PiGLXEp6L+vF8rzdOZbglMYzsZ+xg2dadAs03tvjgLBAq1uoqxofnnyPqbee+9zrwWWVJXONtCJH8
	9cw16Zv4+e0lJKD0xuVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14rk-0000000A2kG-3o77;
	Mon, 31 Aug 2026 16:28:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14ri-0000000A2jV-40Gr
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 16:28:12 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VFpYU3955133
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:28:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QQAALbq9tEkve6/a0cvzrhYbBBU23fzG+zbH/pMCIG4=; b=Aufi+QbFrcZ1EklI
	yP+e1axCE2oid1XNbvldEVA/YAZYMEPNqSMQCmiuBPHNo99GhWe4ZpJZyyGGJR/T
	6M51b+JIXS4f1sxyVMLiysgm8dbZDxY5LfUL1SqsKUvr9zKgXJTHWFIaGcP9v9C/
	VzdACCIxboE/CqkPlNeJ+INS57zyOwnInsnqxo+t31mGviuvf3gMAM2kf8T7MlNi
	Zd7gPd4g8FtFxoOFm5bFnpcJqQH5NQlSxQnvd29nEQl9ta5yRxB49eKWEofsT7j3
	LBHJ5PebDflFyXAEtIx2N/h3UMVlTkgLoi6cW+oKyPrmOs4koP7Cc7DOPisM158f
	lx21wQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd8cvsf17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:28:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-930a312222dso75405585a.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 09:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788193689; x=1788798489; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QQAALbq9tEkve6/a0cvzrhYbBBU23fzG+zbH/pMCIG4=;
        b=YuyE0xfDILDOECsesKfFsdEFv5Xj7TpfaQjTqc8kgE6YJ4i6DojMIjZD97LwDjOkLd
         nAFHx7He2H9Ju7hhoNZjdAkaEkfvNoEfhlFuqIyjhwpzNrnLpTOfc98B4HUaBw/iu+0K
         CD/A2TYApz4VgCJsLHeMhvx70NtUr/fvgpkAPZYlgTP4fWEOijQYwclH8GrQM8jknpDx
         H+upvyrzO3YuNXqJR2KU1dsD4D0/xGhYLo4ZqDsEL9KN4CnWbVW8b8Mn7fB5ESKX5lN9
         Qk5pWwhbs57AFAKeo+gbIS8qNngmBa+HCGup5yoddM8RoJmvGG0BANc71e/yOVf1vb/t
         jU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788193689; x=1788798489;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QQAALbq9tEkve6/a0cvzrhYbBBU23fzG+zbH/pMCIG4=;
        b=I1Jx+mZuVTswC1iM6DMkubJJWAg8Eh7YbkrXXZ10HSfFZ0+WNNJ3vgu6eqnrm/fTY5
         OLjSW9D/qAil0FJ/ttKFGVA9bT+Ej18/9PS2RyCC636/0uQWw/X8i3YHcujTf/wYAqIC
         7lq2aOSrSDkWuDNyfp4L34nz9xksAPnu1yK3bgdBmxUE2N0DhqE0LHP/N3qO7A4lxaNZ
         +1CRktVi8A+Loshgwu/YrtPeAn/S/MFHDJFtKlOqwZddzlPuvkBwe6BYvoJkBbUwHM2c
         ywajtUXb69NdMpUFGqJsoVxy1CiYMB59geeT0aLD5RTAjhMVz/4Rb+Jphd47dkochlo+
         5cNg==
X-Forwarded-Encrypted: i=1; AHgh+Ro8Xd8TigJWgPQzy54BH6rNQXnSd4K+y1O4/0oTykAwmCjXUEeBy5t+m0RBs3gLhH5R0Arp1r7o28M=@lists.infradead.org
X-Gm-Message-State: AFuF++l4r96XOKCsINLxSrqoOr37i1r8YADHhbKfz4EoqVaz1mXXR27F
	mvhiSFpv1aCMNhoG0XD0eYJeaKmklHw3T1Hh8sO1HbubWPft4iNOrvM3omriG+qJbCQS92RE9a8
	ev40M4uWB4RyDiJvKhpYCDQbicXNlrzfL90Da7640i+moVG4M2hoJqlF/pptuWENafzlz
X-Gm-Gg: AR+sD10J6rD9n8R3HC7w9YA1AEv5VKOyMHbuZyEAPXk9OkH/lbZklW1DW2fT2U2m0jM
	CzaGfEzLAdCrHNIB6Hc7OljngjDSbqQWlRr+p14Mo5kaFojsWTgiNKDbs2X8NwROBxYMbleXC/P
	KTMvix2vhx2wpZeFnCDTjhEp3uUn8XQKJJiCbCjRohRZot6mlmF/kMrCkFCRD8LbSmWBwrc0xpA
	Ovifj2l18Qm9UiY8BmZhI/W96Wh3Tf9UESCaWxj1i7U0BKoKj1SVRoJN7gG06cwmM3JPJM97/Ua
	tcZizMEbiHiyy81JwmunD9LtSxfe0/xF2eQgJKO6d/4+ftbZpSzNi3GMLDEdgq/bjrxFZVWc44N
	0pxBS4HAvKF4PBbUYLeGSRw==
X-Received: by 2002:a05:620a:f10:b0:939:216c:59dd with SMTP id af79cd13be357-939287b1e3bmr1054410685a.4.1788193689314;
        Mon, 31 Aug 2026 09:28:09 -0700 (PDT)
X-Received: by 2002:a05:620a:f10:b0:939:216c:59dd with SMTP id af79cd13be357-939287b1e3bmr1054405585a.4.1788193688823;
        Mon, 31 Aug 2026 09:28:08 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255f1b5a4esm464039466b.32.2026.08.31.09.28.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 09:28:08 -0700 (PDT)
Message-ID: <563e9749-5558-4ccb-9b1d-0d3ec6a80ed6@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 18:28:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 03/12] drm/msm/dsi: Fix indentation of if
 block in dsi_mgr_bridge_mode_valid()
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
 <20260828-drm-msm-hdmi-eliza-v1-3-67843277de17@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-3-67843277de17@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDE0MiBTYWx0ZWRfX2l3WgjdaL6NW
 X7VfrviJfp0XNVOtPXpKwkUihIznlk5U7zkTV+0kgGXkB8rokPFaiJevmwyor4tt+iZ8/4A4hS/
 EWRcjUj/OJP0f7iuFKUbSw3erOwoDWk=
X-Authority-Analysis: v=2.4 cv=JtnBas4C c=1 sm=1 tr=0 ts=6a95ab9a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=oMov3bMtrqd5QQYwA5wA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDE0MiBTYWx0ZWRfX1X8352eg+y0r
 jDB/eqX+zVI+me+Ba6IQmjEXmTOJm15sBzu3smG9XNUCldNYpV8KlC5HLoIywytMfLvXOz9Ogz0
 7MFWdNiAEEcIfozrYS5A0muqBlmDtkK5+eEEJhUL/LPurjbFUEpIewK1TkCGti7h6qU3wGgy60l
 aH6qTTK+vkVnoMrDY2KM2qklzs3E95VjsEhCywRzpt93qmwGhOkOYwAa90dlvWb1Dc63oXZTnZB
 CeRwhzphMLscFuP93DqjshoQ+P8vfgr5nunSC+JOEfQHInyoX6jvFs0PBy5shxjR/zac0UEZ7qP
 yg4SXH5FOeknKZKn8OqG3lZfN91BXKgEgAbmtCl3d3BobdGN1DiHFOujSoQ7NCRx3dY8oRGoR3s
 1f5mc/R5c09QymS9SZ/g/FWNZBObhfGhaVOfXLihp/DeTWfzTCGTtY7yeXWHMosahgrPs0bfRqv
 OX4yk9L1EeZgZsIEORQ==
X-Proofpoint-GUID: tCwijricxMsP6BMXMnjgbiFSPdW5i-2M
X-Proofpoint-ORIG-GUID: tCwijricxMsP6BMXMnjgbiFSPdW5i-2M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_05,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 bulkscore=0 phishscore=0 priorityscore=1501
 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_092811_030806_D3C109E5 
X-CRM114-Status: UNSURE (   8.10  )
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

On 8/28/26 4:05 PM, Krzysztof Kozlowski wrote:
> Correct confusing indentation within else {} block in
> dsi_mgr_bridge_mode_valid().
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
