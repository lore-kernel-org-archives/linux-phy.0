Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E194E7544E
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 11:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+hJPsTgpCdTD+KrNcRcC5w8ZFaDL7ieG4A1PPksV4fg=; b=Dzus3tVD9AUCYK
	rU8Rp8XAjGbWGV9ElffKRWKi/OJGtuHHM1mP2r5IdMMXdValDDvRXuOe/88BYizgc5K1rs1Bb6GZx
	tD9sCDpk15NWcENk3Y/QKmMBIoleG4sNt4wtwUvfEUsjSVWGhK1aMcoAwR4ghorwFtSKHiSXXkwAP
	EDB3CLbFD79A4HvkZfueZWc0lJoTYA6R+um0E6mxXl/zWVRcWRjZw3eTBLwvKjxbSEuzCqhIvd+3I
	XoXloevt/1LTyPyExC2kZMw8lMyQDw7MFOtd+IWPl7e5wb8SjyMrNC3s7JZ8y6RlvTWT2KvmjQ9xC
	xZ5jRwAIRKzauoieYTbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlm-0000000GiuV-1mqK;
	Wed, 24 Dec 2025 11:11:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlj-0000000Gitb-1WNI
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 11:11:05 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO7BG8g1056165
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=eND4k2bQNoHugRX6xP9D08
	AEi9x2YTwmh5SQPR0G+Co=; b=Zv5J1DSEKKOLUYzjE5HhWVMaNPPy00jNHX0d5+
	YkQexr5KVYA8ijehv6KxCRGWQYJwc8bqmocll5HlwNnpFWdXOK9Neeb8O7zCvKmV
	jN3faPN5kQtaA4V4E+06jezZsP8xqOYE+pCs+Ehe7abGZVtf4PE0IkklXUHQHxvk
	d06ImpSZDiekPbzX+7HEERrmL2u5KRzu9JGWfQWou2LQ1rna7RV8U31M5qfUb9KI
	m/R3TB29NnpO4z/XAVP0gc5lKdz7SCjURmCshEo4BLzmNZXkyFJH/wnhUslGPRiU
	oVnPd11ZVgdIpdGTNf3IILQtikajbExnf3Y9KYCaiGMqbPWA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v28rs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1dea13d34so132677651cf.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 03:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766574661; x=1767179461; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eND4k2bQNoHugRX6xP9D08AEi9x2YTwmh5SQPR0G+Co=;
        b=gWupBOAZDHHxLngtoxDnJcLtHjrfH+SpxXbhNY2PaNVekf7r6NF7xXUMD9gueATgb9
         CrrXnF7E5Ugsh+zsOETBA0hIUuwSyWC+pWKNSTGBGoxufDpkClNFN9tLTTMbXxlG5cWG
         u4pJmbvUy8CnQeHG4VWS4EJmzFXZ8QlBUPXQARtM/cguw58G3zXiHCK9qyv/Fy5NIwYq
         Hc2GQVk/qNRM89J8EEgPsPHotLtpW3eLKzAphdTMPf77KFoTF12Q2oU9pXzR7uFc5mHN
         5EvhU6LrSnbov4V+ThDQDaIHbVyXeZnAGNcxWXPekcXIpB1dTLO7KZKCygmAhEH+2MZj
         9Q8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766574661; x=1767179461;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eND4k2bQNoHugRX6xP9D08AEi9x2YTwmh5SQPR0G+Co=;
        b=MkkjrHg1rvZwYEbGh2kBnjDA6Du+VKpX6ih1rFcw7SD61bQVsZDAyOqtAhn/qwLmid
         nLNRhYJFlaV2qkEAh8fj6+Jt8BEpy8AOJGxpW+vMpcQQu7AZiMZYUfEdk42lvEI2DP3E
         0jaHqAtnSYDXiDNp1WUcNdy1/+qaUj5ywkaYfd5uutEtOdpgcIp9H7mSIiAjFvfxrU7p
         wupzlDsx+T3HFkGNEz0rLTEpBYXV8ccOdNNpMY2P1hZnO4Tdz3Pz1tss8dXE/DRUcIVJ
         k7fHz79yYs84v44nQ1spL+iSTo9PEpGxNy7QDaePS2EEC2iEns1cWYUVS3CEVGVudAc/
         TaQw==
X-Forwarded-Encrypted: i=1; AJvYcCURLqJb70gtoVngFb+Zhlh0gp3fhNgIN/z4eKa67VrlMf5uAK0iiG0qPw58qcoWwxcKT1MDK5d+xj8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwM/nv/CXQO3a6H63OwSCXVa5hdhkuhsVZHOgKiRk/F9q51ODPn
	5AT82bVunOjbnwSyQRFvb7wsfZ3hGvJzK9WBigrlun8j3v+WHB85UHuGQbU2Ey2W3Au7/iR3b9J
	grIT/75/uxiziPEeWLKLnUtkP44x0GrHlsDU73CXMm18PogNFFqGdJWmbCZkXGnSXLdvtMn+4Xk
	p5
X-Gm-Gg: AY/fxX7NlYIGx3qxAmFT96CGNPYVDZAn5Lo/Gytbtp/paEvWE+OtjsjzoJtrV6c5/Zt
	xHcYm4PVTGRInk51iizTTm82MP6ArngfhFksTUO2UCcHkkMpZF/WVowvF2m8HhMT8FTcdKL7lJ9
	rCurwbuo5Z+EnbTO+K1PcYkrHkLDYUBsgMlh/h5qfGYk4Yc2RjzCm6lgO7yNyDy58mezouqsySt
	lpnFo+XulrYptE+K/IX37d1vXzmkE+U6GIyZxmSZbf0Uk2rb37H+Wo4O4g1wKBLZg6X8Wk4ha4r
	LdsLofirQQA+t7DwgK6i0su297ch7aSiOdO+WQBQcRjKzmtK6wHFhe5pjBzbZquApMz46VabHq7
	titEJslP8sDP57ko=
X-Received: by 2002:ac8:5dc8:0:b0:4e8:b446:c023 with SMTP id d75a77b69052e-4f4abd791d1mr267213181cf.49.1766574660485;
        Wed, 24 Dec 2025 03:11:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKZA1S/GR18OFt56AFX/nEIr8aiQPN8OYdNz+QT6DinhQ5AkVKJzhs/ZSnwnjoOgIlekCgfg==
X-Received: by 2002:ac8:5dc8:0:b0:4e8:b446:c023 with SMTP id d75a77b69052e-4f4abd791d1mr267212671cf.49.1766574659919;
        Wed, 24 Dec 2025 03:10:59 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm16799036a12.31.2025.12.24.03.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 03:10:58 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH RESEND v6 0/4] phy: qcom: edp: Add support for Glymur
 platform
Date: Wed, 24 Dec 2025 13:10:43 +0200
Message-Id: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADPKS2kC/43PzW6EIBQF4FeZsC6GCwLa1Sw62y7aZdMFCo4kK
 g6Mpmbiu5fapjWxibO5yeHnO7k3FIy3JqDHww15M9pgXReDeDigslbd2WCrY0aUUE5ywnBfT/h
 SuhYb3WOlNT43Uzt4HIa+d/6KqcoApM5pkeUoKr03lf1YGt7Qy+n19PyE3uN5bcPV+WkpHmG5/
 elIdztGwASbjJWiyBWkvDg2tlPeJc6fF3ykazDfB2kE42POWAYmlXoDshUIsA+yCEKZcUgZMAV
 iA6a/IBBI7wOplDRjkjBqqg3I/0BK+D7Iv0ACUrJciAqqowshuQyqiZ/aJI5vVqzYexYXkeWF4
 QWjUtCC/8PO8/wJMUmaU3gCAAA=
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2903;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=D+uTSNaECmJZICpMJm7ATuyq7f15JQFPv1mvQdAQrTw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8o68JRKhNasBuwj0ePI4f/AzXv68GOwEOecq
 Ct3e/mtwEOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvKOgAKCRAbX0TJAJUV
 VtrSD/9rMJU1PStDCSNziaNhiDcahqEgNsKrHPEWZ9xa64+3h/SkVaCun+UihaWGsk3W2B6eI+d
 zr7oaK9A1+NI7Tzg0qqm01h3HmPYpvkFp3L09AA0/74A00LcfTCJ+gu/Cx8wYxT5bDItknWBQwf
 bCRjR1Qd1qTT9susNE+mmVqwoe+GU3YD801ByWxcCWPvZ6/UHqgMY2aJbnFhmR4AA7II8Gto5Ci
 9pjxrj8quDwGY4AGfJAbQo1ISPrgfPA8S/JPhcQWYg/eoGGPcEfNRQWbsM6BXwugA52hjY2/S46
 cU0U4IFDBg12yK35KSJAA0Iei0OYwFVmMQYEnjxv1zjVK7CumyM8lWQ9v4qYxdgZYun8a4hTG0N
 X44YnvmB3nJKsmraclyt5P+nCxDt1XdrNyTHzj4Frlj4GaeYoPhHh12nsPG3NYVis1/wkCrqWJE
 kLAB6FaETOFtVrsH1ey2fWaIUXSNSsoxA1HWZX9hTr8Q+5GHuNQHsZ1qiWRkCOKrHXFG7ZDVC8+
 ClkNTfabW1UO72lNZgxTvgj9EMhbv9Q6BY5D6NvfLs6C01Z59Ez1i1gKLChDCZ/81Ops+bgWFtd
 hqEzqyYaM/KhXccljARFvtPzHEnTI/MrvcQO9Ps9OnAV2w2pYNtiPiDF/BXWo5C+FNVubShgTWR
 wkrPSCnHdT2L+Fw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NyBTYWx0ZWRfX1Cuq/FFFVm9e
 T0Wykn3TBMjHZ67YQPJTUGWNqUJiD7vgKb/ZdCPeafyspZPsNraUXe5IWafT0G50gsUhmVGKwkN
 7ntAcHVVrV8FbWDgivdP1hNReq79X/m31Uxs+CD43pf/I7G0IjmmMi+/Jrt65DNAqiDv5zBzakB
 hKfojX2UsOKqzMof6+3Jr5MUzUc+jbalK7iw6Fyr+Ne6NdTECLSQMPw46zOzBmOjwe23wgaLtwV
 jMuIuQKkfw7dOIXJCXeuaEMgMjS4AFjVYQp5MAPGrVVE+uv9NDKg/uPqUmokHyezJ62SLgCtfnP
 NsFDF/WuwSpQi6F+NfDb5N002zEEo9Ww6aADQ9iJZounF20FVjqteguhc6rqLEm2wdC15SJmoFM
 R6sI6b9LiPW5274Jr1Ys3g0LfUAKTYOIddU9/i7eJZT2ISFE8yAr/kUu21FlE57U0ub7EPXhoHE
 AhpPvu8IIMYUKd0mybA==
X-Proofpoint-ORIG-GUID: OU7aV5mG0cOkugTSuueGR1qUsozHd0Yp
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694bca45 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8
 a=KKAkSRfTAAAA:8 a=rv5esH4l-LSXXVRZdzkA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: OU7aV5mG0cOkugTSuueGR1qUsozHd0Yp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_031103_789231_7B3DCCEC 
X-CRM114-Status: GOOD (  13.05  )
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
https://lore.kernel.org/r/20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v6 (resend):
- Picked up Dmitry's R-b tag for the 4th patch
- Rebased on next-20251219 (+dependency)
- Link to v6: https://lore.kernel.org/r/20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com
 
Changes in v6:
- Added the rest of the values for the AUX_CFG arrays for v4 and v5
  platforms, and re-worded the commit to explain why. 
- Added proper values for the VCO_DIV for v8.
- Picked up Dmitry's R-b tag for 2nd patch
- Link to v5: https://patch.msgid.link/20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com

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
 drivers/phy/qualcomm/phy-qcom-edp.c                | 229 ++++++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  |  52 +++++
 3 files changed, 274 insertions(+), 9 deletions(-)
---
base-commit: f8beda16dfb950d9ec35e7a195251361e98ebea5
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
