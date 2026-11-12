Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E0E60A2613
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 15:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Gm0WVYQu;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=a8cw1c5d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Q/elow6+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=OouPUGU/KRNhSlKYbX4G3mC+6kIRGQO38463iX8/G/Y=; b=Gm0WVYQu362oiomA/97FzTYqXL
	JwqPw+x6Bp1ImNcrEZEtvN/ZGGvawlJhGDxo4NivdjMMw5yKDt/LjXx10Mv5qADaBUoN2atLZ1tZI
	rque0isyvcABqcfky4mapVO9SccE6UYOZaWdcUnE1rH+yeRgyX9C/ADDwVQbFg121V6w0PiLWB2im
	NNnvj23ZzsluXybxTTM78txkuSWp6Vd54UL/m+j7ysxXYL86vqmqWGCm4XKPWkDHAZAaPBFJZd2wM
	OFqq/nhO/vJd56TCDIbLXxWjOvkPh0uwlQ5xGtAbAOjHccb4lWEGX/EGI1o6TheoB1DDKznnaZer5
	e8gRy1NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWr8-0000000ATvD-0lCw;
	Thu, 12 Nov 2026 15:36:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWqz-0000000ATs0-2SrL
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 15:36:47 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ACFZVIZ1159591
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 15:36:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bByGg6JAw17Ly5zyYq9Oy9
	b5UiJSKoKnL0GaYBDTkvM=; b=a8cw1c5d1f0tWkOY/B2w+cAq3Bi5Dz5M8i4Vbl
	yWYkA0MArDrj8xehZZ/+az+VKz3CKcsIMfCK3uaPP610t69Pm+gVAmRpJNeIYsy1
	HOjs+B+otWRJuv7hso8fKQseru3tI28WHmZf7q8ziM7BUP97Xp8RJ8vIPaEExTPt
	pDG28q2YlrykPG+0f0JsC1ipie/YoM/tWY8+OH0iabvOe5JNfeEgbGMr8PjnZAvE
	dYFt4I0upwAjDi3LZdlabj4xb6v3TjYRYAD8RuNlaQ181g/hYjJUAUsnn886f9HY
	mvrkcxBjhsM75Zor33eFsgP6iB6YLqPwjV6AWVnocY7iVyZQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hw9a09pg2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 15:36:44 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-7cc37ee6562so473999137.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 07:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794497804; x=1795102604; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=bByGg6JAw17Ly5zyYq9Oy9b5UiJSKoKnL0GaYBDTkvM=;
        b=Q/elow6+sgvLucGot0qvC2t4AyMe9X1IE3p1g79NNecDf7sr+VUAR0Nd0ilw5U6+cj
         NCAotb0JbEMQKyo6GFADFCllKeI31BnifzN28/3cPEhW9gPJNcEF4a1bas1lbJmtCLpW
         9V92uO8FCk/QCfT4n3hl7Ptp8Lo2WBMUSjZhdFM3vJfVaUwpJ6QmHjsTLQqMtkF3RnS7
         49RWdyH6YBypqMvUc6Y0viYYdZlX+39DUy0Z0EhTynaFSQL16PSJuzHcGyY3rVpKLuw6
         iM22NXbwVjlzhfNre+hU2R6KgsXrY6gLjh9tfiz5Jx+Dh5ye9VziXyVxgkaeqshXE2n3
         B2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794497804; x=1795102604;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=bByGg6JAw17Ly5zyYq9Oy9b5UiJSKoKnL0GaYBDTkvM=;
        b=AB4TvG0qlqxw7BbNtoueWllPpDBy2BoQ8lOIiHydNLhQ70CZo4CMIiML/WMai9Q4S8
         /fcBjUtWFEBTZhT99bzPKeUC4scC4QfBqGpm5ZatcwXG6tTKH15/MujqpIJC6Mdul9M/
         GKvnmHSmGbYIAn0k0SWJt+Q9fNAXoM4fash5jPDU+W1tbjzE334Z5k4RJGRw3HqB9rpS
         0xThKaXmruqBH/UJ5DP6I7jFJW9r9IwJ/VKHlDW9ROz9SZ8AH922/KU0xa2Ai0MT6pxl
         8CrZigQGgfdLdFTAi63rVcwqqQquxkIN4Oo8q7rUA6v0H2SfH+tEV/vxy4QCEEQl5HIZ
         66jw==
X-Forwarded-Encrypted: i=1; AL+hErHbDxrVQ8BSI0IpPHorRXTPC2nEX/LHollEESMKZRt+EgzrLHzm3NCgG5/XkSdM416VP0a4sydDvAw=@lists.infradead.org
X-Gm-Message-State: APuU4Z/XrGO+K4nlpFeiqBqKGKzDi7Y9miJne9lGjXJSqdpONyDoqLnU
	cMIhcFxTINnyheA1x0diGMgceK9I0iJ6jOmN+LlccFwJ5f04sYNS37bm+LMHW6VxMfgxdQ3emUS
	2V1cG7+QSJO96t7t0jGSSGxuUugbW2gBqREsBWoFLGIjGzHJO5P8Owz9CJ03NzVj2IqyJyURdAr
	uP
X-Gm-Gg: AYBFou3FL6sazfh7C2eSWGc4uKoBX2Iu0PfS4q1mEq9NOwcloP/ym3Bo8TFOKd+ZtoU
	ontdDI3zYSxtZOPE5O5EtOVArDvp7mJl3oETnW+LZ76dst1vMTrYbMiSmIZyJpX3h5F4raJbaTJ
	lF7Rq/7peoJa3OENe+mBq2bVR9LW8EJjuEgXIG+iDmFEYibeInQ11u4vITaGFcttsqvCx12D9Nc
	fTHmu2BGKkTy8EBf+RrHYw0/hbxjIlhpGea5YEqUzjYGQKAaQvgqFo11HOiWNG3e3Ju6hkNQgmL
	UGOWe4/mWG3yiTbMpCbjmWnftxzb0nCCXe2BHH1VHipnKo2NcQHqET24OqNXfOpLgLS7ApUAY5a
	5ZkC0nghBmxYJBI/kM0RD2QXpBuzLKrbqQCf5r72+CKyh9WpKpX4w/ZMzt1T7hEV4xPMgH1cTul
	tDAw==
X-Received: by 2002:a05:6102:334c:b0:7a7:19aa:f0d8 with SMTP id ada2fe7eead31-7d50615aa99mr2084952137.37.1794497803644;
        Thu, 12 Nov 2026 07:36:43 -0800 (PST)
X-Received: by 2002:a05:6102:334c:b0:7a7:19aa:f0d8 with SMTP id ada2fe7eead31-7d50615aa99mr2084932137.37.1794497803043;
        Thu, 12 Nov 2026 07:36:43 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ba09536ebfsm138353235e9.5.2026.11.12.07.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 07:36:42 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v2 0/3] phy: qcom: Describe the AHB2PHY bridge clock on
 Nord
Date: Thu, 12 Nov 2026 16:36:37 +0100
Message-Id: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAXd9WoC/x3MwQpCIRBA0V+RWTfQzOJB/Uq0sHHMoVJTiB7iv
 yctz+LeAV2baYezG9D0Y91KXuCDA0k+3xUtLAMfeSMixreUF+bSAvp045p2lOcDOTD5U5AowrD
 a2jTa9/+9XOf8Aew8FqZnAAAA
X-Change-ID: 20261112-qcom-nord-ahb2phy-clk-2d21a9dcfcc2
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2288;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=mULlwViyv0exnFtcM2GrsqpSROgeSPiUGvff9t1domw=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq9d0IsJ8v4K0XcrRUuq3BdJIgorK6rsVPY+uEN
 NtpoxEpklCJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCavXdCAAKCRAFnS7L/zaE
 w6auD/95jrzroX+IKtiATPMHYGVSu7T1Uxa+mBTb7LGhyEWm7J2ub4ba9rYAZv3oQX06/oJWmIO
 NgUfAgALPcd7Q98g2V7z59mAKfrb80yJnOWDhf3XrUfroAIvElqlIYXTfwOUwmYGDLCC8qlyymv
 56etBFyWuDmdhsIrxIIKxBa2v53Aquajp5peqiGNRyaWDsTQr+//djo78kZQ4qQHAIhdYmmEV82
 47+U3+VSszq4qQUV74wnHQl0YrirWuwtNjyyr9x/+AokTuJhPII4MsG5n21H4/zP1+65b9pWkfq
 6LHY+wdsbfD0oEwWVjeAdWgipqcXeHoOlfSQae5Qcbm4Ai7AT9V0/NHZpE8RmMhtoIQ24SbuBiw
 B8uwWiwB13uyVvJ6YxxL7M2E6xz1vR8NqcTA9JniLLnufXojSEmOMPKBcP4JsYmDtYqZDTAGdoA
 U/n3SmeL/vNLUuTobJQA6So1jKFz6PWdOLAFjZnlm7vZ6N2U261uY0F8e53VWQ/b0Mn8kkXPhAS
 UFcmKRhSOeaOqgct4SsUHDgfbadByOIfUp8pVCpCQkzF0I+kbB95kKU5dnf2pRPoQem5PApVVXf
 2Baz1UkBvdZKRh3P6jfLXyspmuiepbzTUy4VDOeD7vBFW8qwEEEMeLQuPHknYAQ1lVJDh6Xuw41
 wVPkCzP+cEEQ5KQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: J3y6S7Xd_OQXlh29gyfcup_VTkh5OSQp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEyMDA2MiBTYWx0ZWRfXwKtrIZXGZCkI
 fUSTT+x0UVFRVcFsINFC/tzbGoHSzoLd6urEyNAszEteImUKPQe8ti4GKdU+2NYoIRzvbWY9IXy
 dyGZ8hLvMOaIzPaTvaqTQy7Bd1nXS3JFDENvJnlUnonN4RPfIqq1Np8VExdAioh9ahH7+caDvJ3
 hfdVICWY8VFugCoNR1RGtTcKDMsodtYoJ67qJInnAp/goeaJ5zWXI3sABcmUuU7GYlYE217ieh7
 I4KVYFid9vEPTa0xjsdbD2PLQoEWCxO4d2MzE5KaCjHo9amKnvhpAody8l67/s9DjflrKC+zyZ6
 OjOQCzwgcJhiYMuhvaAkEaFqM/7bcyViwIeNy8v2w8PRu1j4ZQz6qV9SnVPT3LBHLANpYGkkVvB
 3L30Ukmnq6QPoICEND8KnybeuhfUxM2tpRIJhiBcB/4+CWSBcuctoPbIJQLii7QVG49lWupdmQY
 ZA52u75ghIoQnqrSKuA==
X-Proofpoint-ORIG-GUID: J3y6S7Xd_OQXlh29gyfcup_VTkh5OSQp
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEyMDA2MiBTYWx0ZWRfX1Qu5S5IUB9Xg
 3uJdIYa0Xz8C1eDth4QeJJSUhsoUsBkyAQJ1vz19xKeDSeXA17fIurMZw7Ix3RyyW6V9qkMyZpo
 HbcFDkxh2///ZwIhfKMoPoKkoPFePVg=
X-Authority-Analysis: v=2.4 cv=COG/zhrD c=1 sm=1 tr=0 ts=6af5dd0c cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=j5_5Z_UV0zr-ZIPiTBgA:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611120062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_073646_005103_38EA26A0 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Nord, the register space of all the USB PHYs (the two USB3-DP QMP
PHYs and the three eUSB2 PHYs) sits behind the AHB2PHY_0 bridge, which
is gated by NE_GCC_AHB2PHY_CLK. None of the PHYs currently describe or
enable that clock, so clk_disable_unused() gates it before the PHYs are
initialized. The PHY init sequences then never reach the hardware and
the controllers fail to come up:

  dwc3-qcom a600000.usb: DWC3 controller soft reset failed.
  dwc3-qcom a600000.usb: error -ETIMEDOUT: failed to initialize core
  xhci-hcd xhci-hcd.2.auto: can't setup: -110

As a result, USB on Nord only works when booting with clk_ignore_unused.

An earlier attempt marked the clock always-on in the NE GCC driver. This
series instead makes the PHYs consumers of the bridge clock, so it is
only kept enabled while a PHY is in use:

 - Patch 1 adds a fifth "cfg_ahb" clock to the Nord QMP USB3-DP PHY
   binding. No driver change is required.
 - Patches 2 and 3 add a "bus" clock to the Nord eUSB2 PHY binding, and
   Nord-specific match data in the snps-eusb2 driver that enables it
   alongside the "ref" clock.

This should go into v7.4.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
Changes in v2:
- Drop the qcom,sm8550-snps-eusb2-phy fallback from patch 2/3
- Make constraints on the number of clocks stricter in patch 1/3
- Tweak commit messages
- Add Fixes tags to DT binding patches as they actually fix existing
  issues
- Link to v1: https://lore.kernel.org/all/20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com/

---
Shawn Guo (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add the cfg_ahb clock for Nord
      dt-bindings: phy: qcom,snps-eusb2-phy: Add Nord bus clock
      phy: phy-snps-eusb2: Enable AHB2PHY bus clock on Nord

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  3 +++
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          | 24 +++++++++++++++++++++-
 drivers/phy/phy-snps-eusb2.c                       | 13 ++++++++++++
 3 files changed, 39 insertions(+), 1 deletion(-)
---
base-commit: aaa2f954c21b205a0bcd0961e5b2be4e82e58455
change-id: 20261112-qcom-nord-ahb2phy-clk-2d21a9dcfcc2

Best regards,
--  
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
