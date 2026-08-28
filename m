Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6945C61DCB
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdkWqV1snW8UruC2tBs+3vq+tvRsUgWyGMiHwvArOY8=; b=XFiAqseDxQNNyg
	ctYshWtoYJJTlqN9LvNNKVZU4S9XLcEEt/6vobSZnAEUBO0g4wgmTfnTJyb14REjcp0gOI6YyLQnz
	Ggf5/WooRfzokJmDHYerhmzcJWlVE5Gr9T+oJdI7UNMMrMK8erBzX4stdzFngaL7fBVI5OHDhYWd+
	ot5PWpgk6MKhK1TwER/6YxSMd8svZhvqMTtxc66Ji1q59AEDXvkRcKAB+mzXAG4m3N7y3oqX/6ltm
	ioE17BDs/kyBek+2vSqp2ikfqd6NUv4J7ndEp4hWiw66aCfEqAuWUEMdqhPRkdIaN+ONTkfEjkHuP
	43uTGfZ7nbNJMAvRT+BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDD-00000005wTP-2NkY;
	Fri, 28 Aug 2026 14:05:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDB-00000005wRW-0xOn
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:05:42 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDkc3c3075313
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5Zxd143ASUomJNNgHPeOAeQIGghuC3wI/sji5Dtl2sM=; b=gi03dk5S8dPzpK6H
	5Jr3NrN5ftZNDTgS+nXu6GOYO8qbA2SxYUJnNMT1MgnexuKo3ydjNxqQXVfaUuxq
	Fnwg57Kh/o46B72HXjMahgg6W71oRhRgEy0lZXZisbfTAIWeYu5ICmXhh54h1k9M
	krGFCXdW5hmYO3PJnIuUsMrea/2XV7oJ+KZ2DiOtaEc4vMaOufBJMvMF5TjYL/7i
	umKLWatKGBvePJPPCnBYKbayOi7RTVJ2Q6VUYKjfRVLutjp75gXvVjkZIKtCdj3E
	90t85bH9oa9zsIkDN+hx/gm/rKBbgZ1ClWRcyVo1OCCorRhHRyE+zI+aVRWzuM/E
	bgXZQA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb1v3ahfx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c1d30035dso6993491cf.2
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925940; x=1788530740; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5Zxd143ASUomJNNgHPeOAeQIGghuC3wI/sji5Dtl2sM=;
        b=YoXG3G3mEBOeYstvqePUNbGbkZRERvhXBtwBqU9ppHv2bCgwYk2OP21Bc1pXNAprBL
         sOMHUEkeUWf5MiU0rEbA+33+8cFfQaPQ78MOtdUgpvOrjpM6pD3sxK2jVAIoYAh0jyjr
         9hlIOB0FHd+zRoxSSA9dW+T45ul6MkHi+zthqBMM5NzEsSRa5MKKlMXVgwiftOE3dWgj
         +as+PWQfm2RW4VfoC+CWH1brpQMpDUASFTHfDzhFzXGxJSDB5UQW5LzLprkUKhJ8E5Bb
         HTI4MPGGDW0iMMzaj6Q3ucccnjd7O7RkvuCJhQMb6z+X++5qUPABRDe/0AXpO21XFo5Z
         RSpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925940; x=1788530740;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5Zxd143ASUomJNNgHPeOAeQIGghuC3wI/sji5Dtl2sM=;
        b=Rug9Pd8ItrMZrhyDiM14bVTW4KaYeYnxF6ddB+SJu8VHaaoMUb/vIYZziMNchM+jj5
         +KeJDxl5x9RS+Z87AzK94la9e+R3Dv4+7brZcR07Sos+tRTyuoXNbhG0U8BtRrU5bnhb
         FILMnCAzUGUj5Rmjy7t1MJMlSmEHF+nMFtFI4tba6B9H+ly/0GwfilxQJThGalNI6ya5
         fveIhpKT1rWUF/BZJsHqt7CHcdBKrivZsLuHlIfvXk79gEhGQmUx5/PhVSItlbs/UhQa
         9mRBR8M6fBttseXbjRnaLVn42wQwuvwqMF2rBbOLRsL2PZ/b54X1DNmivdTMg4MwXqza
         JAoA==
X-Forwarded-Encrypted: i=1; AHgh+RozN7zIIbIwm+fR6YL0NE7McqQpS/NjgpJEICbkWYPrgVZPXvIlE+BexQjjEsOUtVelu4q0LRWybgs=@lists.infradead.org
X-Gm-Message-State: AFuF++kprk+2Q4fzK8khP3h+pLLmGyge2bYDWSZ3KZO46qsFK9Stub/P
	cn8NVaDaXe2R31E6cSCN2rcyRG4mZ7KwwY24RgP2kg2oNfTN8amjUXKnDYQe8CjP4ZcT88ALHuA
	sW6299bS377WxxAQUYrfZvg9ZxAR3TFvPKUajQAM6bGMMCTDzSxrPwSDeD3p87ftoO3naoFuVIv
	X7
X-Gm-Gg: AR+sD10aMahb/rTiZjOhJOKbt0sYMKaPsR0+9ySTEiCC55I67pYbl6XvA1gmSSDFlB8
	Nnbkseg3Z6IaKUcoVSv521O/WBss3+fiPpxahrn4OBr5LXU590GqRagix0tanOE36RuDv+s9XS5
	4E7kKZAundFDiAeQBgnp2HHsl/TW9GPMLRVKPi8Y8d1UuHD4bCiJ5NPfIrm5YYyuESYyLe+KleD
	DqT2pgeVNvuNHPngHylPVd34Oh9jFibFuvELm3kw9eesw6N7Z98zH+wxgOEM1VPU1Kb30saKlK2
	ThgUn5XAWZsLy8Nsyv7fIsvxxH4BasY8HTR2y9Xo5W8ChgyuQbKjkDgj+nTnln/zU+mGQ4pLDaW
	pLbhhWdiAyGLgycTrnr3YE1E=
X-Received: by 2002:a05:622a:14e:b0:51b:f40b:2fb3 with SMTP id d75a77b69052e-52fb940f94emr74674671cf.9.1787925937944;
        Fri, 28 Aug 2026 07:05:37 -0700 (PDT)
X-Received: by 2002:a05:622a:14e:b0:51b:f40b:2fb3 with SMTP id d75a77b69052e-52fb940f94emr74672371cf.9.1787925937232;
        Fri, 28 Aug 2026 07:05:37 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:36 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 16:05:02 +0200
Subject: [PATCH RFC/DO NOT MERGE 04/12] dt-bindings: display/msm: hdmi:
 Correct name of disallowed supplies
MIME-Version: 1.0
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-4-67843277de17@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1120;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=dxt0nRLMlCSOHXCt5GgWA+SbZAKlsIeSxAesz/KABiI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWbJu9iixJwm9XNddPSZcVmCxWgF0WLJqc2x
 esPt9B+9uWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVmwAKCRDBN2bmhouD
 19VjD/4v1r5Juz7BMmixRhI1GYLMqcc3Wnor8vlc0z4pT+CFHeP9LTVl0BDJqVlC0jFUzbtFRNR
 JbL7AEEgjUy6LnwG4HmNYOplyQR8aUDIbCyFw4lwud14ssL/67IQzlID3OnW305TgvYYe/myfcK
 4lgXwmAr/5OM42lY/tCkbvG63YwRSPx3SnzFyrLVExL4+02BvNK60ahBF5TmZU1uNUf4i+/6AzJ
 1jUlscemAPuFpOdM5jI77M6mkvL9eOcKIEqW+Uvk/0+BgNw6d0L8N0cJySUpT15iyVb7V3jJfge
 o9PuvzxTcoT/xaAAAwVsPfZ0Y01pI7yJ87DNHeu8W6vF/nJk9o0pBHsFqHSN12AdkLsTiTnpmF9
 HaQIiTX/LGfW5V6vhZjAwpfb84vxs3p5jB6VdYpc0H+y+Q3T8DX5z58LBrJWtyw50zyCgWwTsll
 +np7qWem/Zt+cmRDtB6fH0eZQHq+PbT37zduRfnvS5GVFGQxZ7SgXwqUg/OATHtHjU+Ng8ADkaP
 9FBGkPnrPWucubtx3c9U9LGfgcCSX6KwJAGpARyfuSeZd5BG5cHXYo7kFRn3lpkH08T5yqKtaOM
 st688zOzCrg9xdtvZrXgZsb7wS5FTmd7MD62+3alvLvG1oQ/bdPw7iLZJj22Wj6FY4FFTuvaLoV
 Ua1sGS095TT4eAw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX1q+m25L4gboZ
 QEaMgHly8hzfLCJzuBwbX4c4rhEKdu6ipmYgBLIyDdtlVWAudAxorfyLtSMBcdxMOmyNeJRWV6l
 3sXJ0pXFrgYqeIRqwdF9xkOZqRgmOZ8PHP9NETD9yI9gZC6Q5owssdS+ah1Aq7yQSBCSP2M9dgt
 rX7/PPA8Mc/WoxM9BHfBV1IEmphJATv7H2htKPVpSCGSnBfpSWGaVttq1vuHg7SLyOUnL6FJeYV
 KFgN+Jz0O28yWggK1I8UwDepUz3T827TmPX3T4SGXUnHk7odVxWeH8sZ3k7xDGwdtnD3orbs4MX
 SGf6haCxHI4hRHknNPGHcpRHRmAbUOUzutbq73r5OOA++8KFzqqYfATSKMSKhUdLH4SNT21wI1N
 AS/LNCifig7gwoED2ulH2n3XSEKGyOXgHaCaDGxL/yV16OHTEtukO9bIq6+biPDuP+UcbtiaXht
 5ZIC5EZQJV1oJviI/GQ==
X-Proofpoint-ORIG-GUID: oyO6MFpNaJxMAo8TnRP2EEpFP5zdl0rD
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX+6f21ZxG7g2J
 qUDTinfTEth9gWusCcwNX5RwRtzrQloAzdOnrNcnwyOgSWkytFS6kBVptAFYJ4yFA/cFGnS/+iF
 TJZQGLQ0N1LcCdaN/07pypYUO8ZfTSo=
X-Authority-Analysis: v=2.4 cv=faedDUQF c=1 sm=1 tr=0 ts=6a9195b4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=LSMMCDwwRte7x3nqQVUA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: oyO6MFpNaJxMAo8TnRP2EEpFP5zdl0rD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_070541_417747_4BC244A8 
X-CRM114-Status: GOOD (  12.29  )
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

There are no properties in DTS or Linux drivers called
"core-vcc-supplies" or "hdmi-mux-supplies", so the binding probably
wanted "-supply" properties instead.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/hdmi.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
index dfec6c3480f3..02d27ccad024 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -113,7 +113,7 @@ allOf:
             - const: core
             - const: master_iface
             - const: slave_iface
-        core-vcc-supplies: false
+        core-vcc-supply: false
 
   - if:
       properties:
@@ -136,7 +136,7 @@ allOf:
             - const: core
             - const: alt_iface
             - const: extp
-        hdmi-mux-supplies: false
+        hdmi-mux-supply: false
 
   - if:
       properties:

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
