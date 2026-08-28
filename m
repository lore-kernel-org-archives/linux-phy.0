Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B55C4C61DD3
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZ4gObtSR1H2kPHy0ECQOAYWk95iTj1s2qgf0xPsUNU=; b=npvdZVz82AWh8r
	F/VRBAX8jKD2Rf5wFP4gPQOuiRtgyFFUG0bocmQ7luHOWGOj3xGa0/rG8AsbImEQXckZajrElG9dj
	klHMsmFVHYYpOuPuiRBee/IePnJZqebiiGXzXtt+B5KZVNA8y1bXL4Z4iO3cueZl01jpikrMSm6Cx
	kgKtZ1Vfy3vwpfjwH0uz7sy2HMSF6K9zD9mQqXhd1GK8Zn3kP+9nZAJQ5JCoJR8W9Bx9ndboC0x0t
	r1dNY1HN7J8NomIAyC32Uqy5GVUtsEHsc9nGovHkF+2Fz3NVXRnzqjFCnbNqtacenP6LhJWYiThRE
	Vy9kAbiObc+bhTnEVX/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDB-00000005wRi-1hwV;
	Fri, 28 Aug 2026 14:05:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxD9-00000005wQa-21R9
	for linux-phy@bombadil.infradead.org;
	Fri, 28 Aug 2026 14:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=SijLPEyLEnAofFIXZf7zUa2hkI9h99tMoUcsgWGJx4U=; b=EvcCMnQjQ+QfXbemU7FNvyEd13
	rU0EDoZr+b54ZROqtNbIx4LEUxWBE1ReERgjIeew9+Boh2Lnu/UsHaTeL8NbOKmk0hf+PIUtqOPpe
	z68otg5A8CNXtexkfa2Y4bBaiXQEr0vuwJZbDT9QDvzSrk2dKpP7Ekb7Ibu6Cv3xK3tI7BbvSLPKg
	BeIPbuj41jS5wUoix6sR1YgoXDjTIQli8mZ4ks/EDy/Yn2xbI04R0oLJJ4XGby7v9Nfn3ausJmzfy
	IGdU5lA4NCo+EyFERXE24Wgfo2PVUs6R/x52GQRlsrgLttifMI+nqnVZHRTBODb+LqwQ+/rzKr4DA
	sMkRqJyQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wzxD6-00000008Iqo-0YaT
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:05:38 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDkojC2970069
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SijLPEyLEnAofFIXZf7zUa2hkI9h99tMoUcsgWGJx4U=; b=mgfnRBLO7+xtH49F
	uQrk2QC6D0rt/5dVeKPRy/DmH+pa88OO8C9ikkle5PujDNSOWr+ncp/TaZfxF0MW
	kAILn0v2fT77VqEkeNlxTQKzOnQ1Er+3tbblX3dh294Vlas3HUGqCiXxRpjuz83y
	jGnebV9LW5jQyJngOtI+sFo47kJpO6RowGCs6nXQxTR1MaFj8yve8B9hmyq9XJt1
	mKdBVDtYW8fIJXh7N9PsDyBrXuxgOHhADfrpJakoDHy2qbY5MHooOPaYPhHTzMPY
	z0dsFrGbRlh+UrF9jXSjbydb8O+nC8aYNTOjOc13JmCPDwVMCJUInYG5leUmSTaB
	pl11FQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3hs245w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:33 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-52fbe82672eso7844491cf.1
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925932; x=1788530732; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SijLPEyLEnAofFIXZf7zUa2hkI9h99tMoUcsgWGJx4U=;
        b=g3a7BebbiNMDCOobsqf+tA4M8EoWdHofw5lw26GSayHPoOkyRINoH+2Wk9bbimtX5Z
         m3XxhxMb42JfI8FOeMbaC1dD3u19XyRTeiVdoj8x1LJ2uKuosbQRZHHMtY4nrKroMqnX
         eYiEkeb5C/tsKPjZIqYKNJfADE+vzkBp3qlKTX0Vusfy4oQ1PntnBS1wEOvf29Z92TgE
         PjgUv/srRYND3+sz7wVMzpEb7a3SY3oLi7GrnwA6YOOvrV60kdNjETjtTM/9KZDS4lrw
         FQMEbvXz2x1Sii+YHLCqzUl4lWPAaCDmZUojkm79ItHA+C4A/1nivtEyioH3dHTv15NN
         dwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925932; x=1788530732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SijLPEyLEnAofFIXZf7zUa2hkI9h99tMoUcsgWGJx4U=;
        b=Ii3dBKyJkGfCp63ODpullO1fIBZSALnaARbAEZ6oxFKcbri1tTp8Kqx4+RNiKVAcNr
         7k5n7x5n8loV2NW19L6LPJKJlcVb/2ucq/6u2J1NFpftUoDnblr9sqymDVCd7OcRqTic
         2bPeLxqX/U/LkFkUTnEBUY+hujW4f6mOFhF2kg+zuDsLoEAAD+PjxkO1UPi81L4AB/yL
         Tz8BP5KIYczYkak54jq3kDD8WS3hMhziBYlTK/NxWo6RgwkINmIefkmDFwY9+5dsplKc
         QuLoo9nO1XIklsYfQxlzd6WMT+wUBhTD1PAZC8hGZV3TFUZZn5F7jhDsfKaYB0iTsVOf
         QtBw==
X-Forwarded-Encrypted: i=1; AHgh+RrHIT70yAnp43st4vsvMNmDCFliVhaiZdjtYUunphmNl5HWArIGRJ5bQItAUBUwtYAOXP7uAVwIIiw=@lists.infradead.org
X-Gm-Message-State: AFuF++l7VZbkwHosCwCDqwc/1HramSbAPPupcKO2gGNySN4pv3fZyJoq
	IfCuPwaUDsIivzVcgQZe3UNfDEzmzrG6oNlVPMV3gWNIe8D868R3hIRhvZcLcX3clyWIP27PCNG
	axt2K7KcboEs2zBx+b3w1CNm27gxr9WiUeyafGNHqQ7JcSpWDn+xdYwy3g2Dh5H+rCcAR1NxJdk
	MX
X-Gm-Gg: AR+sD10b2Ep+yE1sYtiYqRExWnYo2QDsKjKy+9latY+cGJk6KLWES6ulwJBvIq1JaPB
	bHbK4Ktgoankb3SfNxOHG6UKui6dNt+rXjcvaaj7s50j/UjAFg0CJSvulPLQzZ1x6LZa21cUvZb
	xiJs3yLJk1/fCTK1PSfrbycR0kjeoENNwZsPq2Fz+jXCXijpAUGMquQnfomO2f5ExbiUTYVkjle
	O1K5AnmD6sFYb47oFmi9jO3BxcyUjD2r+rMwqJmy5DUw8UyavFiCzvkXl+uL1vwprZ9AgvbIv+q
	LeKPFt7cQtcwhzGmzR5JH6CNH7EicWwOYa4CjxcneJFKd9QBV5jIpBzuitszzuROo0zScA84HVW
	ri8R+uxw5A0frdWCyaoE/m/o=
X-Received: by 2002:ac8:7f11:0:b0:52d:3ccc:968b with SMTP id d75a77b69052e-52fb94aef37mr78759731cf.9.1787925932350;
        Fri, 28 Aug 2026 07:05:32 -0700 (PDT)
X-Received: by 2002:ac8:7f11:0:b0:52d:3ccc:968b with SMTP id d75a77b69052e-52fb94aef37mr78758401cf.9.1787925931811;
        Fri, 28 Aug 2026 07:05:31 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 16:05:00 +0200
Subject: [PATCH RFC/DO NOT MERGE 02/12] drm/msm: Properly handle
 msm_ioremap() without name
MIME-Version: 1.0
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-2-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
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
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1304;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Xtl694D0DgWPJxP23Arvi4tkW3Ki0aks6uVKllA5u8c=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWZqLsb4jv2eWG6WOsapWn81xKcReH32cGg8
 b8f2ZeSuxWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVmQAKCRDBN2bmhouD
 1y+CD/9MFWW20kWIW0usKkurL+trqzNP9TIAiBL1sxgQCfzfMzVh6USS1UWvFJjQD2Lpb2cRPUY
 zueE7v2zYP9txYiJg6btT/ijXKexAVRb0dCTAkaBwQmnXACWpieJurgtwp9Os5drwTu0LE21x/Q
 jSMaIZmvxzwL0m1YI/bAP0yj5CzRps2vOR8q2lQ7Nhx82fEKoaGcpVyXejgpg6oV1ZERZmEOQ/8
 /yo8+D2RfcgytxDu3qYnVmhvrb+n0YFMWbqpC0QEsjdT4zeu57rEs9NOLaaKvdO3S/VMbx8nMfK
 AmezuU6D8jMVsXDtfQGmSLvnj3b4Dwn/NQcmYoZl01swFhxSW3vXlA//RanOjXhSRJLvfajPkTd
 COeNEq3ncHYWh1z2iJrhl+5sZupEuVllbtl71ZUDS/gkrwAgVeV9kvSNsO0CcKYs536hEf1i3GV
 S9rAxzF0bBxTPg9TBEMHA6tz9ydenWhocPGKJLbEU8lPrsWmJZuymriUSHLRlfEK6g6hgqCCXCn
 M+Qs90q6T+9NnNhwnmPBDuNxtijSfOHwwgARf2IAjw2VhDgs1gqKejOqzzpkGq28CEmk6w3o6VG
 1EWfI3eQStM5WvJCcRbQCZudG83EAADcQkruZ1PcZM4CdJ28ANeG8o3/S8rzUiS8/+2ERJgd+aE
 ZSEHRDQ786rt4vg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=XKYAjwhE c=1 sm=1 tr=0 ts=6a9195ad cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=or9nyMeYumr6D7LEzWYA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX2Zw2LcKQpy4j
 RmxG2Y7cc10IBGN0i5Y7Uax0tkjqzdfTExKwey1UFNhh74UrIGXJdjGxrjS1/v/CdQyIM603/5Y
 Wbmqxm+2nroCEst/95xKbCYxwXESN20zmuYAVge0ldwasjJPiTnI0Cwc/iS2Jr0/D7v8oCkv5gl
 63O6CrjlCKGdUry//I35TumnpLNMgcRMUm2qPqjW/5Hu/O2ZsbtE8g5PKupTJ82MenriCtfni0T
 6AjIks17TLAv6gmrejiWhy7oiOSMIp1UitxXSSY1s00P9VewBzXilzuKmT9XF8t2XOcCEcBQBDm
 xX/bWGz369pGdklrExEJuZh5qW1LI8dY/Fm152jdSqRw7/GtQrPacpyE8JBT6CgvOwCDm5SQ65k
 7DYQXrMzPHag5+DeXSApGrcFskmFeNpxxIWky/I64xEjxLio2sGx/KMDrp0y4v216Nf+CSScM6s
 aIE5t9xdR4DpAXx7zgg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX+I5TnkYbVdgW
 r4+7u3FkGQQfCdRNv1LWb1kw9g6WW/Kjny9QABRfYn5G+9SDFeDYs/De//txlUvfR88eWjkgtbn
 Iv3tT/gDSyzODOxVxdasnFn3SUqQqZI=
X-Proofpoint-GUID: fe9Rd2HglfvAmkW_FAdHSx6HqpRfdOBA
X-Proofpoint-ORIG-GUID: fe9Rd2HglfvAmkW_FAdHSx6HqpRfdOBA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_150536_512331_2E3299C6 
X-CRM114-Status: GOOD (  11.76  )
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

msm_ioremap() accepts being called without name of the region to map and
in such case maps by index 0.  However error paths still use the name in
error message.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_io_utils.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_io_utils.c b/drivers/gpu/drm/msm/msm_io_utils.c
index a6efe1eac271..93b94e330cb8 100644
--- a/drivers/gpu/drm/msm/msm_io_utils.c
+++ b/drivers/gpu/drm/msm/msm_io_utils.c
@@ -77,7 +77,8 @@ static void __iomem *_msm_ioremap(struct platform_device *pdev, const char *name
 
 	if (!res) {
 		if (!quiet)
-			DRM_DEV_ERROR(&pdev->dev, "failed to get memory resource: %s\n", name);
+			DRM_DEV_ERROR(&pdev->dev, "failed to get memory resource: %s\n",
+				      (name ? name : "#0"));
 		return ERR_PTR(-EINVAL);
 	}
 
@@ -86,7 +87,8 @@ static void __iomem *_msm_ioremap(struct platform_device *pdev, const char *name
 	ptr = devm_ioremap(&pdev->dev, res->start, size);
 	if (!ptr) {
 		if (!quiet)
-			DRM_DEV_ERROR(&pdev->dev, "failed to ioremap: %s\n", name);
+			DRM_DEV_ERROR(&pdev->dev, "failed to ioremap: %s\n",
+				      (name ? name : "#0"));
 		return ERR_PTR(-ENOMEM);
 	}
 

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
