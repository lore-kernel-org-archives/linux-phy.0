Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CFA5D2F7FE
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 14:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ER7ob4kDilzXNkth9NtysPk59B9yj8cj+eXgdNftgAs=; b=aLsLJpoNyfJFUC
	wZHluQna5pjK0qhWIkdbvA7n2Bu1M63BEcGf8N1iP80+NpeaB0MLqi6fLJ9qH/UyccCe93XvWGo7/
	rc8JKl6Jc22yQK8YGsnzlMhVfmbFQpclfa8D4rah4zh5AliFku1qBfsrZUElncAA4niy6AWj6lvzJ
	XSOszogSv+U5xx7O7IHyfVeEU+XdyXw4xACwCfgenDkHKzKy//uUbmMW4Xt6izpZVz5BOOzb0sINn
	ZUSw4ViZQLt/mUJJOZNCrqiUfsiPLQZf6zM3PNCbFDhAWhE+ryPJA+Hn1dnrGhY7TMQQYo9EOTECw
	/cC8MNb1wm9usAFsd94w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWil-00000009a7e-41TK;
	Fri, 05 Dec 2025 14:23:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWij-00000009a6Z-2QHQ
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 14:23:42 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5DrAhY912562
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 14:23:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=oEukkwwY+sPzhwpR1r18+v
	TwNNSbGVXYm3tbNoZD61M=; b=DiwG1IzoAYPTybxIn8zBkHYl9VuyFgXc4a85AQ
	+Lb7WxdTfIMfk/ouk0pIamlOVouBHy43bKNGQqHN/VD+s2cYKe2xxurnW5ojoSj+
	wthMLeeFZQ9qVRO+M+f3W7r2RGWHSug8i5TcQSKl39TZF+3Qpe3lx6yW01bjdlfg
	b/qJfBV4CKABMz1QMmMp7ZpepxIaIQeqCfUAGmvySIq8rS51lMG/EOvsx2BZawus
	3/K8gGIXR6h5fgJJI0aQ0CrjjqZ9nZVpZm0fhPlTXSrWREIoRNonsHBQEsfkgq9u
	IEHKy3ar6b/abvkUKYUrXqkoNDM4tquI2unmKtHWI/Un/gTg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av0ngr2me-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 14:23:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b29b4864b7so483557685a.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 06:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764944619; x=1765549419; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oEukkwwY+sPzhwpR1r18+vTwNNSbGVXYm3tbNoZD61M=;
        b=TTvA3Re85/nmsSKmgxkrXNXkjjDWJ/ag32MLS6UuuzUB5Npoe3IN4BSBzH3U/2qL0t
         qZNohFJbQ5Cv1Xq9D9MCICCjbWah0pKa57DldQNDhIvcWkHSJ/Gqasd8EUE2Tbbeg19+
         CzsGWVQMjI9Uo71Iwl6C650oU6O7h77ihnWCtKTMXUdBrwH9Vd7FZDH+exjZzhWwSwco
         ZhQxTidiDhVLuyaw1wAsx4GRY+cyUpK0oVXVOIakV0CUR8eezUnbWHXMvJPht/q5HjwX
         u3ztgmwiizUE9bZXP721sdPR0LsfDlWd/RRrOFkhS/MSGMTZ5p7qAQ+62txk4vEmk6vI
         Gwvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764944619; x=1765549419;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oEukkwwY+sPzhwpR1r18+vTwNNSbGVXYm3tbNoZD61M=;
        b=X9xjAAK7Txcc5D8chkmxAgFmN1xyXokIjVH3YGVbV+/AGKrXj7OQjEhKhdwYXYblMh
         mrSt35tz3vJJOWC2eqQkW26ZJ+KCGmYC+Ha9XguJcNmiLyMVgGuNOyeNaIMEwJiDoypK
         Swueo8ML0XyN6TxL4XFVAHE2tEvZ9LWiqyfWpIt6Kua3SwimENZ6WpNvZx9C0PEGWqx+
         cctid2leDh8rHnoqbSOYSQfwrgq6UgpunVSVxabwfqEXAyKraKNIcVvdK7ANYq/dMHUj
         oKeW5BHRwwTT6yAPTukz71o1hm5faZqv1bMEtm3peXa+BXoTKyxHPHEwGm1oKqzjHoVg
         TU8A==
X-Forwarded-Encrypted: i=1; AJvYcCXqGDTlcLmzMGfWOBXBs2Qj+VCe4BV2eiHiUrRkrKfEXx7qzC6c06vaD2kL0DU+a1NRgJqfWYpXk70=@lists.infradead.org
X-Gm-Message-State: AOJu0YzH9tRGxSCiSVyc5NZdHTuEWp2P7Yti2uCR/kIAbpOWidOPicsv
	tEFQD9cl4r8ERrenKIDRQqlguQBG/VqM0nGQMzR7xPiaP57jlkms1hx/dpM30AwF9y+0rudS37Z
	K2uHFbcVLU/I1OwDbU8HDQrXJHT9LMLMB9gwN3ejKFpqcBcMNDRvzc9qOtZv/TY55MsBP
X-Gm-Gg: ASbGncs2UfFiwhpZ8kEBwcdwnd3ldaj44IUDFxvYIsoFcWe7kRhzSsA2/2g5+rnw4Yb
	bvEyfqCaIii3K9221E4G0MRyFblC3rJpnoGhrE9qTIJzNoRoo2BkNTa4rt3Phj94WXKpVgPeMTy
	C3ka1GHF94+TyGxhc1NSL1oy8rnNQ0F6zQDxamafP2YLISIaOvtRQ5xkY4FrQHMWXVbMXeIeSpy
	7Ji08M6go2d7L7DyzJ0dIdR7D9N3LTrm+K1SPhyvjfGpTwXx9kFCrCWl8LZPFb4MIhTo++q0NuG
	UPVxOU98epTkBBYINqsUFW07dE7Kdg+GY1ScMPCbqfwc6KGrZKh0r6I82LeXyW2kqqtuKQ62S1v
	GuZj6t6+FOiD7Cfg=
X-Received: by 2002:a05:620a:4011:b0:89e:67a9:fcf1 with SMTP id af79cd13be357-8b6181bd1c4mr1040586485a.52.1764944619412;
        Fri, 05 Dec 2025 06:23:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFVa+U1mTdpcgI8QkL3RnJCxnH/pWmhJ6I18QpfvqO4iNM7TfSzxDliw2+7U+Ic/VqUZoKQ2w==
X-Received: by 2002:a05:620a:4011:b0:89e:67a9:fcf1 with SMTP id af79cd13be357-8b6181bd1c4mr1040578285a.52.1764944618811;
        Fri, 05 Dec 2025 06:23:38 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331df0sm9414161f8f.36.2025.12.05.06.23.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 06:23:38 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v5 0/4] phy: qcom: edp: Add support for Glymur platform
Date: Fri, 05 Dec 2025 16:23:19 +0200
Message-Id: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANfqMmkC/43NQW7DIBCF4atErDsVw0DAWfUeURbYEBspMRQSq
 1bku5dEapUqC3f5j0bfu7Hic/CF7TY3lv0USohjDfW2Yd1gx95DcLWZ4ELxhhOkYYbPLp7BuwT
 WOehP8/maoVxTivkCwhpE7RrRmoZVJWV/DF+Phf2h9hDKJeb5MTjh/fpjy1V7QuDgDXXbtrEoV
 ftxCqPN8T3mnt3xSTyDzTooKlifFZFBL7V7AekJRFwHqYLYGYWSkCxuX0D5CyJH+T9QaC0MaU7
 CH/+Ay7J8A14qAy/CAQAA
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2314;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=HIk/KB7nLSZ67Hc+uZ1kAhWwUj5oy+XlAWup05FysFM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpMurjVC2bDux3j6at5WKl2SSFj5zjBz/ae0/M7
 Ju2myWAm6SJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTLq4wAKCRAbX0TJAJUV
 VoOnD/9JldZMLUHF/fKB0gpavxsnwy0g+dBkVsathEKAwbB7ah8WLQSQjLtjdzbfXoB75+igvdL
 QO3oUwwf4TYfwB5RpZ5AcIEF6LptK3wJGv2pcKYPKoqG+w5lZzq930gPA041lZjsKFeG0cx+6TT
 PIMQL3kqbskKI4UUNKyVVZSkHe/yAEVeCXd1Zo/ZKV4o97zdeVs/Pf/Jf8HYuh8aQqzV9UPmcb0
 0wXA57O6it5LGQpQhddp3qaOn1UpvaL2QmWNG7KBWSWXb4fbBncZsE8SoMKECGZLSE7m3rKGeDr
 Su/v+PeD9oY0X3K4qyd87gt7SVC6o1aAIbWvNwz5grPJ/n8K4YV0Cjk0MnOksnigc8p3w1V/MhB
 S5JeheullEBQKgAYpz+yP4/foNjwcbdlgW3522xQSr4xRpVVyZ8vu70mXdhty0+2IhUTFz0Ri9q
 KM48S7WBQTaTZenjy5vDz20Y+fojt0n1rfFEIbPpB8E8jZPw6xeR45AhXjuU5vUEC8B8EzeYTm/
 WiP3KW9BBMbo79QQcxd7DiXrenBuHvGZs7e5HROoQkHNh9OppELit0H8vAhv9Qaa9pqT6XFh8u/
 bPWXRPRis7j2mb7CbpBzRe3A/sSUN7SwaSaJQngdcKdXi0bsOZDdHjI48py/KdlkkEeQYkYc6l9
 VlPpIfkJyQ5U/Tw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: 5M_hDaWrK2zSYed8tIEa5Q0n3xYjKUbX
X-Proofpoint-GUID: 5M_hDaWrK2zSYed8tIEa5Q0n3xYjKUbX
X-Authority-Analysis: v=2.4 cv=DrNbOW/+ c=1 sm=1 tr=0 ts=6932eaec cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=rv5esH4l-LSXXVRZdzkA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMyBTYWx0ZWRfX2TzURsLuqDCi
 z1HInvkv+FIwZXqRGf2hPFYejg3yQoTWSV3PldVeo4EPySaY4q4QInHsd9DcYDMsSsVFDtTHJez
 Z95+z2I1CtkQpqFwTe8OzBObJAcg4pHRbzxKiP8+qAuc8gkHKwqaCzzz97TnvIVf7uH28zwCtE0
 RMhqwQbTbhFO2h/NYCYIX13HDwEl6L/1enea+JuQhSmUr4YkB6dOUUV4S3tPho8JaO0p+ausMUA
 x+jqbrdhITHmFMF3HhncqROm6pB6IHJS+APDiWLdJrZXU/VBJI3tjgQs95jafglJ0QsSBfOTspM
 nj3TCp3ekot4bwXvuXwXVgmErDSUhU/6ynmRiw+YRXKTs4NXmQITFJEK2UjX9/RHuLvln+arAj/
 YmwsbJlZ4i8PPjCK2wVEF+R7G/8/XA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_062341_745741_D7BBD63F 
X-CRM114-Status: GOOD (  11.87  )
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

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v5:
- Renamed phy-qcom-qmp-dp-qserdes-com-v8.h to phy-qcom-qmp-qserdes-dp-com-v8.h,
  as Dmitry suggested, and addapted the include guard.
- Added my Qualcomm OSS signed-off-by tag.
- Link to v4: https://lore.kernel.org/r/20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org

Changes in v4:
- Force fallthrough for 5400 and 8100 link rates in qcom_edp_com_configure_pll_v8,
  as they use the same values.
- Picked up Rob's and Konrad's R-b tags.
- Link to v3: https://lore.kernel.org/r/20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org

Changes in v3:
- Split the DP_AUX_CFG_SIZE change into as separate patch, as per
  Konrad's request.
- Re-worded the dt-bindings commit, as per Krzysztof's request.
- Link to v2: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org

Changes in v2:
- Sorted alphabetically the both the compatible and v8 specific
  configuration.
- Prefixed the new offsets with DP in order differentiate from PCIe ones
- Link to v1: https://lore.kernel.org/r/20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org

---
Abel Vesa (4):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers count
      phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 232 ++++++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  |  52 +++++
 3 files changed, 279 insertions(+), 7 deletions(-)
---
base-commit: 801584822345ed46c0443c1a66ead9173a47c723
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
