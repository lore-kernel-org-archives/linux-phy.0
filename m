Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CF04F94CCA
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 06:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6SfLXHZl9jK9S47WTkvwjiCo9DhHw86Ur3p0XacYUi8=; b=fE3iWHyaufeZ5u
	DOQpAS2TboHvCa8SwhkkdxfCV+/5bzJW9ozcg/Qa9FeQ/0FuAVVm0bbb6GGKTcSw3q7/Iu/qxZQQw
	n6lgbHs1pkEx0aVUMcVxpzhwHIhde951SqG9LJ39A2+Jzx5rH9LWrbIkQLBZ/rZsVmg2l15lRKV1p
	OlYsx7YJ5OEa+DSx0MXx2lQv2CVqZ2QrF0W8NpwlhcwWZVAS2PIks7+ZcTr9xdmC4xxWHAmCQ+fdz
	69SvWvmw33ccMOxvTRobUChWoIKGlr06at1G5wwRxi+3L/iXVyWcuxi6IGoiOzHvpqAkAkvZmP+ib
	AIpyLxnlsIP3SG/WCTaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQf9-00000009dkw-1Ldr;
	Wed, 22 Apr 2026 06:02:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQf6-00000009djM-3n1V
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 06:02:14 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M4sgfw4051183
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=GDn9/QN5j3kDRhyol4ojzl
	wNnIM0CIsP7N6m3h6CsA4=; b=cf1Olo02ApM9jNheKk0PZBB/HWXybNOKYUtZTh
	CqnG0bJ/tC0/EA97S36a7AVunn1bo9vYirXTWDLMldmkwMbU74w2UFE6hPkk54Xr
	Hn32MkGo+YgUDcGjJHofRFNrsZJe3+hYdVQNRW7ijCHWlhrgb4MAHP3kVRE1qZ/3
	kEP0APDx1D8powJLgA+A2USKyiY4QKgGNBjdcWDVYK6DOX8hIXFgcgerw/rS19lb
	zfMqDwFxpmiS+ag04st4ItS/Zu82ezkpmr6n4PownNWI75zjRMBLcjdTi0sL1nSj
	NgYB+5N5t4DtaprGsGOphfk4rx8/3lRSDMlNtp7MJ+9vsVeQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenfhxnu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8eb52a22eb6so557472385a.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 23:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776837731; x=1777442531; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GDn9/QN5j3kDRhyol4ojzlwNnIM0CIsP7N6m3h6CsA4=;
        b=aYTy0JXLX2M1OYH58c8+FYFKbc0XZ6S9CQo81pzES6RMN6ZSPra2YB+iOHefoZO6XS
         ZVIHPN3ZVqw8BUsbRB6EX5zyXnRHR50JmF+oWl+Wt81iLFLa+86T0fzRALlEBMRn3NuY
         eXcKgKlMKuPHHpTEB//DQaNo+5pOo2Rls4uB0sDaIoQkL1gKpEAi62xLgFT2UIjOPJiG
         ZAPpOwTUhfnFmUYuFev5lvpwBo+Lg2QN6/JQR0ZkIW72OKg7q+iVC5mPdRN/iojii8hw
         vq9SoWNxHeCfILD6cyLKUdPuxY9qqUqsJaRzdpqE8vRHnBdDl3RXEV7k06koiQDESs2t
         VB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776837731; x=1777442531;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDn9/QN5j3kDRhyol4ojzlwNnIM0CIsP7N6m3h6CsA4=;
        b=jOs/FYc4PhM8JYYMHmiBMSvBL4/luim/KhG+wr4LSHMSRZ+zStQugZzm0AmqscvmK3
         aUC00+swWDTuGpoPZhi5l9VGQ9S90eX38Y5CoEsm0yqcRYNX5XQrdmAWq/iUQ+fwOyWq
         a4TUN6BvjckATM+hwt20dWAQqlF9PgSfrGUGkIkNDgJZGxTvkse7/jCurrAZTzrEsNYy
         BNHERar0cb9/YMMr1O85fcEs9b3glMaO0nlln26dY2orAR3VltmuFfQUArSg5Xaj658C
         9Lhg6kU4G/kRF2whjStX4Tay1rrV2ij1J5VxdExYw7UJFYe4uBG3ZbQXGyK0pHkZzwKp
         cJHA==
X-Forwarded-Encrypted: i=1; AFNElJ/xqwdkaBesbMZvba/F8GxShdxBwTJgUNK8qSLNZOeL1Sg4O1uomKlhglkTHcgEnGrri2p3nVBjX5M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3oOrcgKQvGImsAXzaMDfFkAoVQ6R6JPRFaHcOqR3kH2A+EKmW
	az0loyix/oHzLyAs/ODaTywGTvDPUNKRp+2eoEUSEtUdn4DyxBNtJf6uzn7ei1VufvsPol3YC2c
	hYCkbAEQ6a8JiBky/HVWZpjbsdEDqnU5NF1E0kBk7G9QydvVpAVbo3SeHR7Lna7yrJ5g6
X-Gm-Gg: AeBDiesjUIe6juifRZ/JRVw+jjbbPffqwTO23DIH7y0qf8zwQ/43si2G/90PZjnChMJ
	NhrONRTsgHsG3pcVHnRJnKg21zNj1WkJFYFzbpctksCRNvNPTl0FCXlGXZdp+fOITqv3cTWYfz4
	LO2v81vCdB+4NVBx1pSc8b4gWI5GZo6RTR6hGQOEfdqwC1myQHiUwcmTcfTHfAPTJJR+exSVH38
	4wNUH9ty8Sr+RopgoUOaGJsTLuHDy0oU9H5gSPHOj+Ot4OLDzCtWq1EB6NiWz4RF6nd8TMRqTB0
	w/CSSpbsXctERlNRBdwzvq43kf131h460tyfzJL0nNjAzqhvzj0E3cAPx8/3dG+CkpY6otMBFE6
	ndFdmmZM/lylxmevKOpPxTrgPd//AH+OxmNS9sO5XhG2TzPsOJflAYQwFXIxrZ8n2inXvH0GsUW
	MKoiFPK2gi8V4pQfXqkA==
X-Received: by 2002:a05:620a:284a:b0:8cd:b317:b464 with SMTP id af79cd13be357-8e792b596b8mr3051065385a.61.1776837730940;
        Tue, 21 Apr 2026 23:02:10 -0700 (PDT)
X-Received: by 2002:a05:620a:284a:b0:8cd:b317:b464 with SMTP id af79cd13be357-8e792b596b8mr3051059985a.61.1776837730333;
        Tue, 21 Apr 2026 23:02:10 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ef12122800sm237379985a.18.2026.04.21.23.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 23:02:09 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: [PATCH v4 0/5] phy: qcom: edp: Add DP/eDP switch for phys
Date: Wed, 22 Apr 2026 14:01:50 +0800
Message-Id: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAE5k6GkC/22Oz27CMAyHX6XKeUFOXIjLifdA05Q/zhpp0JKUa
 gj13RfKgQPzwdLP8vfZd1E4Jy5i39xF5jmVNJxraD8a4Xt7/maZQs1Cg96Bhq3kMH6N/U0q9hY
 5gGk9iLo9Zo7pdzUdP5858+VahdNzKJwtLP1wOqVp3zjmHVsE35IhYkXYEkIXqVMcyEYXjQFtv
 Xi4+lSmId/WJ2e1yt7+mZUEqVERaeciRnUYStlcrvbncXJT26qa8YUj6BeOFfeWagXToYN/8GV
 Z/gD1kGrCMAEAAA==
X-Change-ID: 20260205-edp_phy-1eca3ed074c0
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776837726; l=1988;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=aFSvRHF5TyWCpuwZ48kSZW9StI15Mat3A1Go9duK9TU=;
 b=MSd8D1kAFZdRDD5N9Rl1pwyDYZX9J8ByeFUAmw89nBvWXN3I6O1ASr3+aPNgxY9IXcztW08yL
 tTsfP8thnR8DASNNZXSBNQwgXfp8fHMNpdfpEu1NKpkYo2BLcxNb30/
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA1NiBTYWx0ZWRfX/tbRNQJ93wG+
 l3EwNYmdnjkOBKlfA5VEe+8Jv6suoDflhndLhAUnr3KNcmrN8K0r1jcfJ3MDAJgb8X3gZLO0VR2
 k8dp72lKpuhrNZ9nJGOZZfYnzai2WWCeCI4Ok4O9FVCPXnDUQhJUhbtusQrjDbVahp3Z6lsxJZ5
 WToNQelGa10aMnr17AUlPdFEk5fDbW+uF8kHDBO/Ts5/SEjkvWV8TyQTt4X75sMYbcdxHR8ql7z
 uEfOa76TUbHlgS6YnEYS6YgOMSEWgg7q1NALjkfDhJs9ZKhkujiykiBsMLXiZJRvjWSnYmxiamY
 rzfyTGyigRBPozLOatOXxX1k2+z76ZhUiv6YTJNqIglF8TNd3TX7sQFVH7gRg/kWwIES0PzZsEI
 fr/PpxcQBUvEcHjzJlFEPgj0tKmg0jQFPY33+/WtaY95/8O7yWrhljfthKiNZvPS3sEc8UQk4O+
 lPa282M/37HNz+8BiWQ==
X-Authority-Analysis: v=2.4 cv=VMrtWdPX c=1 sm=1 tr=0 ts=69e86464 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=M-2OMZX0rM6BGFiE4MwA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 3-qBHg3YdpOgd30Vt1yWfaQ7-H7d_lWJ
X-Proofpoint-ORIG-GUID: 3-qBHg3YdpOgd30Vt1yWfaQ7-H7d_lWJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 bulkscore=0 malwarescore=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_230212_979782_4D6ED0DA 
X-CRM114-Status: GOOD (  11.56  )
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

Currently the PHY selects the DP/eDP configuration tables in a fixed way,
choosing the table when enable. This driver has known issues:
1. The selected table does not match the actual platform mode.
2. It cannot support both modes at the same time.

As discussed here[1], this series:
1. Cleans up duplicated and incorrect tables based on the HPG.
2. Fixes the LDO programming error in eDP mode.
3. Adds DP/eDP mode switching support.

Note: x1e80100/sa8775p/sc7280/SC8280XP have been tested, while
glymur/sc8180x have not been tested.

[1] https://lore.kernel.org/all/20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com/

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
Changes in v4:
- Splite changes.[Dmitry]
- Add sc8180x tables in a single chagne.[Dmitry][Konrad]
- Link to v3: https://lore.kernel.org/r/20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com

Changes in v3:
- Rebase to next-20260224.[Dmitry]
- Only enable TX1 LDO when lane counts > 2.[Konrad]
- Link to v2: https://lore.kernel.org/all/20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com/

Changes in v2:
- Combine the third patch with the first one.[Dmitry]
- Fix code formatting issues.[Konrad][Dmitry]
- Update the commit message description.[Dmitry][Konrad]
- Fix kodiak swing/pre_emp table values.[Konrad]

---
Yongxing Mou (5):
      phy: qcom: edp: Unify generic DP/eDP swing and pre-emphasis tables
      phy: qcom: edp: Add eDP/DP mode switch support
      phy: qcom: edp: Add SC7280/SC8180X swing/pre-emphasis tables
      phy: qcom: edp: Fix AUX_CFG8 programming for DP mode
      phy: qcom: edp: Add PHY-specific LDO config for eDP low vdiff

 drivers/phy/qualcomm/phy-qcom-edp.c | 221 ++++++++++++++++++++++++++++--------
 1 file changed, 173 insertions(+), 48 deletions(-)
---
base-commit: bee6ea30c48788e18348309f891ed8afbf7702ac
change-id: 20260205-edp_phy-1eca3ed074c0

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
