Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE983FB517B
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 23:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V71nFMfIVSXYPDxZ3vSBcWqXrNASOu59a7aojj9naAw=; b=Vo44/hQa16iO07
	1yC4YSKt/OguRqDG5rrznjYouuuyIV715zoE1MtTK1MiGVTDIAeLGcFtk4Z/VaTA9kLS/jsgGnasR
	tsIT8dyGFKntll5q08PgCkxiKohP0HKxaxZAaUbGMpZ26Y3eFqye9ovxifVv0B9FmRYf7oLGmfKZ5
	iJZlt8mSA4kSiF6dV7aj0ILC7zfLZ5eRwgloCWo1zxGs9QQvlStt/dQjq4Mt6IHBxwEUmc7tYvxdH
	IvN3ZGZeMXkHefdSqDqML3AT+cvGCW1tJ3xYGbU6bXLWqT8fV2NgwPA8v90gWbVSigtIB9eSERp+U
	KIs/nDgbRamUXXdyCDwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9taR-00000005dTv-0wtL;
	Mon, 06 Apr 2026 23:42:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9taO-00000005dTN-12zf
	for linux-phy@lists.infradead.org;
	Mon, 06 Apr 2026 23:42:29 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 636LQeJO3402384
	for <linux-phy@lists.infradead.org>; Mon, 6 Apr 2026 23:42:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QBNE/lG5K0Ju1pitUfzLaBUYmxhHI5uWe5vz/3zRmFA=; b=eac2oUM+YcUi3qaJ
	xAKTj6SwR631NEjwCDf3w7rDOZTUi4UWjQtuFG5wddp7UfrY+GizSmADeSGDDD5l
	Nr8/Qd5G8eQlIS+mioVet+mX8/5I2QlOOMYdgabOlH9Y5xolViGB5LobPBAOmYMo
	hOx+7KtGJomvO2/cFjWVmiinomKWjvm5Vjz4qbqkSs/zzPmQrFMO7U/Os4l/Pgf7
	fvwQaklgVZcbWbTpEXw5WuKYDa9OWPtLrkatlqOYSkOPSX6IxMCW/NR29/w/VIeB
	km0S0Wba9KqwOpMLsmWOvAHB2xZbDwh7NL6npKJ996gC7la9H2/U5OGvfDM3GZuS
	MRYwHA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dcmrhr8rc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Apr 2026 23:42:25 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50b34223670so207057871cf.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Apr 2026 16:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775518944; x=1776123744; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QBNE/lG5K0Ju1pitUfzLaBUYmxhHI5uWe5vz/3zRmFA=;
        b=fU/XudI0EeU/SNlYXRqr4TXMEs4F8v6tRvmjr/R9jn+/7O27J7kM+mlkcsu4mMicNO
         79JegVVwElDJBSpR7jV2Q3cGEyEjQ4XPMju0bTUKIsEOFcgo0NQfzQLfywkvus+hh0Vo
         6g17PnyK30hI1lPqlbheI7eyZO3q0lP1GW+t9Ld3CAZ7agfDeSWhaqT5QpQMekLGBt1a
         PwqAcgxDdjtDf2cBuOVBy88g5Oe2Orts02QJCK42laDHXa96xrgmd+fTBXtIlj9lXF+K
         hcmPXf49Q6ZgHzaIxNvF9gzUbn/mN9EHpumZD/UlgpplDQVW8diO4R1k8NNd2cqKV8in
         FqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775518944; x=1776123744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QBNE/lG5K0Ju1pitUfzLaBUYmxhHI5uWe5vz/3zRmFA=;
        b=HGOTRKDo0aGMKFASOtCx9009eTCSFXpbUaA6GqCAQsVkwFD5X5g/eYgOxvjydvtAPB
         0qF0c3vDj9vp7zTgcl0lS3TOc80+sZ3djlzV3IeMEC8EfUuOPPyBysh4EnmuZagpRtLr
         FQu+QBSoUj5OW+jak/YO8GlqTSUer/L/IAAUzdRbdrKYmDMLya2hF7ZcfT5ifWuY5275
         rC8HErqHLZ/A7jtN5TJ6f7E1kcp3VKVDlfv36VIHCcrQyHyfD+L5MXJC+PvNi+Kn1naB
         0yBiUHUyyGWYpDgzohKLrG5VrJV8gSGhGNilyLYF5Tk6AQvNYdqOKl8zQEPhG/6NgQEa
         IzgA==
X-Forwarded-Encrypted: i=1; AJvYcCX6ZVL6RsjZiz818rielKbiBPCvtPXh98X60X26qv8Y7W+4ICpJxq7tPYQK+GzEogqfDHNKkASRWCY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8d7R31ZHwaNdpXGMPsMPuH8b2K2YdKJzxJ2C5jv2LB8TLRFly
	3mn0jbING/grr3I2QIdebCUXI8F/pfy3qgGLnB2+706AnWSUsN9eNqjBY9LDfqhkjf+VLorFCh8
	puK/tMlB+doZaVuN0ki0XxZIN9d9i8scwR5rsdLDz9vF6YjROrULqAukJuSNijq6BrZLb
X-Gm-Gg: AeBDiev/1FEHNKxqAC2PDmz8in4l9Ww20Bj8Lk/CYEE7ofbhdp3yIanCqgCHVTPxdJW
	di70x1D6WgZD04GVh6FQGCSOKte7N/hAH8JQiG1zdI+pBjOxs6JOCh1Uyr0xwmHd0LOjEv7ocDO
	d+BH5e0215AxuE1ybuNpWR6uGHpNHIEcXymVip3NZ91J94+DHj0Ao/7Jlur5JXPy3UxLV2+Qau+
	MJB6w2e8j1/8Yd/WhvUAz9iG0miLPWaBYLyrrkbh0eklCSQ8u9XqVySikiHcBBv0uJlMMK9PZ8u
	enwe6yBp+u8TJTY0nK8D/vu4/5QrgjseQUlhoSsr3M4IJZjXpFjKtW187kkNu7QIcM+hmcKJ6YH
	kSljQyZeqkdwhyyN0Q2raAgTJUACc3gXQuoDIVS7hGoLzKB41RgSTgFKyrqM0i+7e7f4Q2ToGq+
	xqeROKOP3Obt5A1k2gmmw4Rh7R0NM5vORdeUs=
X-Received: by 2002:a05:622a:2614:b0:50d:86cb:db75 with SMTP id d75a77b69052e-50d86cbdfd4mr114591421cf.7.1775518944403;
        Mon, 06 Apr 2026 16:42:24 -0700 (PDT)
X-Received: by 2002:a05:622a:2614:b0:50d:86cb:db75 with SMTP id d75a77b69052e-50d86cbdfd4mr114591101cf.7.1775518943948;
        Mon, 06 Apr 2026 16:42:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38cd217c708sm33512011fa.39.2026.04.06.16.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2026 16:42:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
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
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: display/msm: move DSI PHY bindings to phy/ subdir
Date: Tue,  7 Apr 2026 02:42:12 +0300
Message-ID: <177551403338.616257.13801012061085104397.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
References: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA2MDIzMSBTYWx0ZWRfXzY6kYPb9OF20
 VtDOlR+d8v6syCupHiTjArVHTFfrNA2COIyu7VDF7rbDzBkSZnCaQEvD58+3GddbslCofdqZfO2
 SqXcSQZJqUhwaB+366u8NKEnh9+Ca2L50bfh2VXmBiYMU1YJZ2Cvu1f0JOzT63IZKMt0MZpvUvU
 0jjTWpw7cPinLoAUSDDUn5MvrIx4B6cLe5hD8ux+ymoYQ3nsfytfM8rZW2IlIkfzMj3yRLZ85FW
 IrQjlAi/PM/wdRbwzqXR0nG5VeL1kSjl6jGUfUoRXuEQKJuVpyjEVjrXgS/m7JeJN3AHpKe6GhY
 wigiBmkTdXp3vgjMdifKSPhrkekBww+hnnG4Tsu7Y920KoQXjtxTgnTofjlxQvxAUMCxCGicxcB
 LCX+cQBmO3JCpBssDPinc2eFtoAsz0dPSbCkWH156zM5xxhl+VDyujyGyMiNa6KiFxLlYoH4dqs
 yKSukG2urJGLhedyfqg==
X-Proofpoint-GUID: _PbyFCF45uJiLgjSX7J_flnmIGFeoEZ6
X-Authority-Analysis: v=2.4 cv=XPUAjwhE c=1 sm=1 tr=0 ts=69d444e1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=e5mUnYsNAAAA:8
 a=jUgDIxc-ftyl2Azd1b4A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: _PbyFCF45uJiLgjSX7J_flnmIGFeoEZ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-06_05,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604060231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_164228_421191_9C37C935 
X-CRM114-Status: UNSURE (   9.01  )
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

On Thu, 05 Mar 2026 01:47:12 +0200, Dmitry Baryshkov wrote:
> Historically DSI PHY bindings landed to the display/msm subdir, however
> they describe PHYs and as such they should be in the phy/ subdir.
> Follow the example of other Qualcomm display-related PHYs (HDMI, eDP)
> and move bindings for the Qualcomm DSI PHYs to the correct subdir.

Applied to msm-next, thanks!

[1/1] dt-bindings: display/msm: move DSI PHY bindings to phy/ subdir
      https://gitlab.freedesktop.org/lumag/msm/-/commit/f94aa7e9cf68

Best regards,
-- 
With best wishes
Dmitry



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
