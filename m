Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D97606A8B9
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 09:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EQnYl4Vp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mED9hrhw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SvDnH/D/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=np6NZi5pRozm4k3StRx0vRMsgTUfYKmcI5UDlW4i/+A=; b=EQnYl4VpEiSmSn0kCJkF9a5NsM
	i0Ty9SzoCvnJuL9dttqEROlTerzsYncbslDDbb0IasyHFypUIFMtEdq/sQRqyvaAVkqh50kkS7wUm
	fkVvowN0LLIXJQpG2DkMRaJeg0w7WrvSyIz3bSL84xVLkmKGt2xvZb0Q4/ipdi9NZHoFLZeHZJzBM
	b0h+Dqi8NXeSh2OPYmHPpSNPjzOE9hG0TJWW2f80XCroVY1e7dX88/3TidCfixaNfyANcssP9jOaE
	iyhCBbNjHeUN9OJu4hxToFT0XSaTLrnWfoRspqzhFehXbs1UQ3hNqb4RAsBr4l6nKCfHtbfbqpudr
	k06mLc5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTF9F-000000051Xq-2Ock;
	Tue, 17 Nov 2026 09:06:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTF9B-000000051Wl-3NQe
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 09:06:40 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AH447Nc1699349
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 09:06:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=CbpQBQ16MuMOG1rclITbIx
	I3R99WZRv9xaq8kicbAE8=; b=mED9hrhwCRdmXiaWsLCLLG55igCFlZAnweJQuk
	4Kkx0T778Cmmy53TYeGLX/crZm1BmKNSQEwVkcxmVijLWx3CmBQdSDu1TKzvJa+F
	VcZ1cqgGvudk+asE2AUnQ48mjt5pANsFcjSv3XjbwtUTP0tq955KxvqKgPiCzJy7
	kLVCfp+qyPoltPsxjlIvzD/5Onf6C0uR79AYkSH0aJjtsAFiZV2kO75/K9VHfqEW
	lMLV45R/ugdTPA+EqT0uRY7aC40aG8UZIaxp3duHSgJDBc/l2MM12NsXqtgtVIPw
	l8vcyuxMe9UD7nN0qQfBpiSpv+j/sqZKVTLma69olEmWhGvA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0fjuh2k4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 09:06:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93f26dd2165so1324147185a.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 01:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794906395; x=1795511195; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=CbpQBQ16MuMOG1rclITbIxI3R99WZRv9xaq8kicbAE8=;
        b=SvDnH/D/uui+CF+1HZVb+Y06dIelK85WX/SVO0VDuywxkE+pFen/YmrhgBj1osEkwb
         cniAQXzL2ZUhXIEpW9pKK4iL/HlyEIpDu0NBO724abfEyTAKefIKEeqwsC/iSuE3TQvL
         JMhK3LBjnC/rzEWk+BQNJdMcaNiKuRvTM7JqkMQz71nUnxJigMmtcBcGjjy1Tp16DD09
         UP5LurJby/5fc9JrTyyegqZLUaFknItRdAiSlCUcRB1yFw5UblniNwF1TbKsZH81nMtG
         zRfXvVJWv7/JdldBh3hpYDecIi5Wh0BY1tMuPIpI2XeaEG2wwF1AuPWCn0oW1BlwE5aG
         wzFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794906395; x=1795511195;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=CbpQBQ16MuMOG1rclITbIxI3R99WZRv9xaq8kicbAE8=;
        b=S9kywJQI8xH4X5Gdr4L36KHnp0Wouf5h02IK29jfZBYc+ZsVtHTASQ46Ep8QMe1eBs
         x+ruf8Q2p4fk/VeWF7MvT7VZ3sdthcM1egaI90LhcoSCiLpqjDGi+a5wDzB/rtlORqXw
         X2W9hhMD9ME1IvnPdI0QSMm+QztgI06PokdKSWnjmeleNxOLLdUwX194qIaswYEYf0I1
         wlpwehfd9TVNjluI4Q2r1gQ/vkrEYIeqPhpInBvipT0GWHRjAqsx9RB7LQCGQxp4J64W
         gY3WQ3v8Nh1nUkFeUH9bwF2v+qVkuAm3ow3AgDAYJ4Da42ecHSR+kmiYJ0uXSDLfQ+Vn
         nooQ==
X-Forwarded-Encrypted: i=1; AL+hErGHa4nE/FF+qmAIYXx2wM5pcratIGHweHI1yko0R9MUhMM4jB8KNMcNzZKeCU7fX9DIVNQVI4numbM=@lists.infradead.org
X-Gm-Message-State: APuU4Z+r6WfUmYXAHR+/2vqwb6Yiipd6MqmLEwQZ38X5BL4l4auo8Ez7
	Dya3nK4cm0WBJx0maYpteMaNjrjAbEthw9OEkgJ63VO7ZOYDdukxegBIPzlxRyy4WM0+e4SZ/pA
	0+6wSJyKGGfLNnLCHI069yQCOc88OQyEN4Rlchp5B4XS7tDy1SmKXJEhX97iMDofDl6Ej
X-Gm-Gg: AYBFou2Fnz1fRmF1POTHVWMUtJzmIJ1CjUVueCUa3h7E1vIyU4y0LaV5RbydB7Ew7xQ
	w8CJaQOR6n77R59OM5XBZ0wVh3LCo9DoSAerOOeLiKYVdSl7d7y+2AsQ9c2UP8tpn+hHPiyLeXM
	ta/3mnhM3ko7Dw8l8pkkRX1Wn/X/EbPI98/NmsLLgzhMC+z3HlIyn3ub9rCldVeIQs3Vkkg4pLo
	54kh8gXg+pM9wTjyM2nOWVreupVkdfFON1XBFfXUFMP7eD0+vIZnprtsUtU8HrZR53xM7637FkP
	1IPeLWNyNvxDO18rBVqRbAGiy9ayDbxC/nkREsbdX9xPlisSblP3bAZJEkRuoJciZl2Y5fMskQk
	D+LhP/UwHPqiI7u+wcsI6nxokQ2X+7trtEnW+ZSjZyaYLFgLAgSIN9dCEcv1ksB/8cBcILQmgGd
	A=
X-Received: by 2002:a05:620a:1988:b0:949:6982:3f07 with SMTP id af79cd13be357-94969824095mr1482999085a.32.1794906395008;
        Tue, 17 Nov 2026 01:06:35 -0800 (PST)
X-Received: by 2002:a05:620a:1988:b0:949:6982:3f07 with SMTP id af79cd13be357-94969824095mr1482995485a.32.1794906394484;
        Tue, 17 Nov 2026 01:06:34 -0800 (PST)
Received: from brgl-qcom.local ([195.50.164.66])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60f8d615sm27310657f8f.56.2026.11.17.01.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 01:06:33 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v3 0/3] phy: qcom: Describe the AHB2PHY bridge clock on
 Nord
Date: Tue, 17 Nov 2026 10:06:27 +0100
Message-Id: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABMZ/GoC/4WNTQ6DIBCFr2Jm3TEwNDV21XsYFxSwkKootKTGc
 PdSL9DNS76X97NDNMGZCNdqh2CSi87PBcSpAmXl/DDodGEgRhfOOeGq/ISzDxqlvdNiN1TjE0k
 Tl61Wg1IEpbsEM7jPsdv1ha2LLx+24ybRz/23mAgZCia10O25Id7cfIz1+pZjiU91Eehzzl+bP
 ILpwQAAAA==
X-Change-ID: 20261112-qcom-nord-ahb2phy-clk-2d21a9dcfcc2
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2527;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=9FHbrbM2yg3aPa7LTlEh6W+OMMqKW+QlgE+H1/SgkKM=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq/BkWuxVk30T5DY+X8ZmyVBzygJcc1wcuDGYix
 E2mzr+IuhaJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCavwZFgAKCRAFnS7L/zaE
 wwPaEACC2/JUDWbXh1Ss0pzbUDZcfYI6iZpv1vIzqTgJ28mACAaYnrL6DVaRvtJzm4d9QFK9fC3
 NwE0Dw0IJjr5Mhlcoq2BDrX0TBbORcgb0PqK9FKAisiYJYb9bqVZIoLjx89zJ3H7+qti4JO67P3
 JzIvKJOu0JVBO84lX49UBkTmtb5mSM61ABp7PF8egOP5EBWL/NUScri02A9YEduWWO5loyt6Gv9
 YKbEUStqmc6MANFojawmF2WY1vekisxHfrSjmquzIado5zumDU5/N4QLnuZ0iE1P5unrcBQHbmy
 O0bCGCGan1q1Vw7vqXllCIumwAqhhSaTN2JmJnfu2xHZP19fW7dwvLkYDf/GGJfDKQ+18FqeJIz
 ZOZ2JGRf8nWzmIArgy7Niwc38tdTdB6VtiYpbNOqyrV3SiPG/ngKHY66FpHLTi5RiHKJs3fLR8A
 u6+md4EMz3UXVZR7tbrAPy2xw0pvUuzsrdiq6QDSKbODsLc9F5a/Zl0nwyG+NEKZKHg3vmjd9cN
 S63BZGhNXTIfbYHsmYSBmS/nsG7aPE4NdkYuju3zINOxC8VDp+B9glBFDD2GiE3F3cjBOXRk5qu
 CjwjWgDXEliZVnqgxg3QyXe5EgJMaSADA3/6fadaWljMQj1YFPZ16Su87TzeMMovznGnzC7dBpN
 XSNBq7CSG/Ws5Hw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE3MDAzNiBTYWx0ZWRfX+52JK4+vW/jj
 slPa/ec0TdUUAW1TajiHI9jvAzX6xF8eeD8YqTm1kJSnBRs5qmCQxy3FBH/jXYRg8EjPPtXuyCi
 6v8Z2p79Vuy1W+MlPHrj6I3+xoXcWxk+ftzYxQ8WZRDzpK7EFvaBrKytynHi1YCO5vmGcC6UlP8
 c1bPsOCAL268MtWrw4tkH6TmHXzQOb+G7SIdbuuSJYzVESHoIOyQi/uvgbfEhuEobjsRFa2BAph
 1sfeLBzCkF6dD6EdFUmBRHgnJzM8vr8W7gMjRVm+xK5NIdvmwm+OGspeKw+UMecrjbTRHxCvwBv
 Rp3pGPQWO8HFAvcwuHILmN/3DfNfGToJky+QTe0oF1QJAt1LoCW1/jZd6i5uUBoR3/xEnW1evPH
 JBvtSagKzX8TMct2C0ie1r8QYBRL3e+bMtABe8GNpt389V0ddyWBlrI4viJLyL4YjGBjXCSclso
 vvR0VLc9eb8VZ+HIqgQ==
X-Authority-Analysis: v=2.4 cv=JfIpPkKV c=1 sm=1 tr=0 ts=6afc191b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Jk2/TV77q6/E6wQq2oQJxQ==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=j5_5Z_UV0zr-ZIPiTBgA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: p0Ee6y2Ur_cc4a9KVzgRiaxZGen6k8aw
X-Proofpoint-GUID: p0Ee6y2Ur_cc4a9KVzgRiaxZGen6k8aw
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE3MDAzNiBTYWx0ZWRfX48+4lrOTBI4U
 U/+80Fttw+EJPSxSxw7qdEzyvbwSHvZvx6Kp5l/oL2FC21bE4VsUVlDpaw+N+9Zw4Q3jsgcVjeI
 z/HqFuhU/JAHRdr9Itg89a6NyxZCAZE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-17_01,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611170036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_010639_385991_FB33709C 
X-CRM114-Status: GOOD (  16.41  )
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
Changes in v3:
- Use an enum instead of a list of const entries for the
  "qcom,nord-snps-eusb2-phy" compatible
- Pick up tags
- Link to v2: https://patch.msgid.link/20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com

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
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          | 27 ++++++++++++++++++++--
 drivers/phy/phy-snps-eusb2.c                       | 13 +++++++++++
 3 files changed, 41 insertions(+), 2 deletions(-)
---
base-commit: 749a4de370409464cf8501ec5b2451df45c84eb4
change-id: 20261112-qcom-nord-ahb2phy-clk-2d21a9dcfcc2

Best regards,
--  
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
