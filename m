Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1BD5C88E77
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dU6fxd6rox2v1pcH2VCTljSIoIYQehiCOZRHAtGSEIw=; b=NfdVNGS7A7CJU7
	1/PL9FEtWS8pkDEoVzOs8hODQ56X/0nmkKCHUGZ7W6XqPRYs7jsDbZ8sBNcy3FbT/lBd90zRANpDl
	5VKHfTHCuYlBy+mMYxM6XC3cSLAEkPhtEqoVRoN6ERQmqx5fKqmangCjRMXMCnWbvp0SPs7aN311G
	l/VKu7yXoafDzbPp43FjzOGp0t+ca7p2Rvlj8MH0Zyz8OzKW1gvL+NlDvxnMxrL9F6sfFcK/eLl7k
	3PqibVM7OPd/zrlsTTRpvPKxmeYs4zOIU70KDFXuirSz3fszb6ra18Pd1qysyXoK4MpHD3oknDoXN
	uhrZGqtcB5zviQuzFNlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7P-00000005rJh-2MOS;
	Tue, 15 Sep 2026 10:10:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7N-00000005rHD-19FW
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=; b=J8Lcz3psdZulUkA8JOQSYW0jHh
	6bbqnXiT//7wlzJ1ZO7/LenHJAu0vRU7adKMM+pLImTwjfFI9P2Mx2CaXE4aSU5L7OqJNiqvK/kma
	U/kgLxpk1rILv2xKPTiTJ1r0AigcVn3eVM7ezL9G2sEMrHTjElRCDH93ZJUIU1Gx7BU4kA1WodTCZ
	t/E+X19wuVNK3qC8XbaxF9pdxa4FZKiItxdof6Uhv/8EcNSoW1Nt7BeXC8wv3hSY1FGvR/6iJOpLq
	9Ro/9nm+n4trn+2B/21dBfQOjY4yZ3U2uLZ2Tvzrr/Ap7RAauEMNmQDhkgermHGfzG2NyuB82fA91
	EhhTo1bA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6Q7I-00000006X6R-3AVT
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:10:24 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68F9hCLd064486
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=; b=W9Z1Y4+jErut6rkx
	FQMuirTrHTIFb2BVCwyp9iljBGJ5GyD/sCZ23wS+dxXwWBLxXObNgAzUPZV+R5b7
	u3Kebg/wHaCPP9BtwLGxslY8RtodK8uSgNVu0whN0/bU24qa+qssHhU1CLOi/S7w
	ZlxckzHVynKQo+fSjnjNWYYMBW0sM4MXIe6RAil1VexsWk+spPZF/4oaAlg6wSYd
	sWw/bQULZ5yWdKS6oKPUwF24t4AntVHo0mnWKQRiwxHMxFE6GXZ7mt+1f8NXPYQa
	ODrL3pSYswhJ30BWFxSb0n3gemocCZEGBnb+KRxmWcIDvibSkr+zxI9/Fr2OiLBt
	fEPZOQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpn41uvs5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:18 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc1b8088202so3790917a12.3
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789467018; x=1790071818; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=;
        b=igANoSvwXZf9qmnyFmde8zsgu9XXLcawkhIoBPz5OsfojaTqpKkwHVkH2O606+V/mo
         AguQMCunKhnt0hI/XEH73Cd2bwObUCIO8+gQNkW3y0/Fq5yzm4vaSWE7RB3/qJevPxgV
         GBzvP7LeD54z05/ULDKb64lVx1iMcVv23Te26BNxxHL5du1ejDzfifZkFtLmMZI8tBXx
         J25pgOelJgNyOH/nEFV5yjD0UaEpfmUMea0yxk+SH/ZqZml+KGnk4NVeyoZey1MC4Ajp
         jswyn7v7MB97OM4ZB3KMgZNHgW6w9z8Vl3kekmdf0GF+ERDIwXV2MNbyXJK4ujc6jo6D
         bT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467018; x=1790071818;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=;
        b=p5D3jQF14EC0o+OdXBbIcRg9VYZR+xUgUyrS6htrBHNkCXcqmBGT1VeTbHb54QnIdt
         Xsz5hE92CD1a/EPyFVUnMFyNY7WqibAxofqIgIHObO933WQOpJE6IOWTYhTjfy1mVYCq
         MJmV28fUBTLIKA65Br8c9kSmiAfu2Ssjx9AUxH5gmJ4ETDOTcIbo6KaTw7XMCqpUeTXM
         cUhqww4uNUvN3/6k6htNUr2/zLJaZDZgR6tcDWs8iUQaG6FHi4zFeDDpSMObTe9wrb9U
         HX/u2YU11KGEg2hsoHADa41c8gmgfe62qvePZDMZes/ZKjtmyrhpCsI6oCh6x5Ltq35u
         kTYw==
X-Gm-Message-State: AFuF++k11UEKAts8tz2MUwFYw/vgyvqV9YkG5nOCQDPzDyQNdb7cttFe
	sgc9hKnpVvwJ5EWXWMPEJh5xyeU6xv/WknDKoMo6rBYBXyopvDtn0nqCMSM5YTYKLD/LZJKGUn2
	ApCuC7bbnzsBq/YWLNZ/lrPvskoLnLASz4RKVjW3sdVWqGfWrOVSJ3iVxt+j+fyvmrzoy
X-Gm-Gg: AYBFou0ILX0UtsJ96hBoH0tSM9nTu+u5+jwHSBVJJZiaijurGAjyTISHZy2YkHnKjmY
	SxCQ5eYIezAPu0LDEs3xHGpxsjEr8e39I60eu2roiK0MpZA+xiJdQfyP1yfqeg/JlX8AdkHDxos
	pkPWNBqLQmi/SNyGqotvXV0x/kb5ZpijEgLExQCsk4gb/mOMcuh9cAsVVQoWWCSEeOijL1aUc/a
	MosS6tdC/+YNX96Rh4t5NGPDqt8R/o22iKkfhqKKwV18e8Pth8ArLxvvxkOE9ycK8l46WRRkSrH
	yHrvHPn9P6JbWAsfocWCfDu85VzgT/q0gJDlEP0AXnRWXd9RraK1WNiPjlcmZnuAfsd5x983KYH
	DzFZmgDkThIi2LDGA/GsNRll6/BviiDISH6Uu1Uu6H+yKqxqwZMlPlR7VmJ4EMm3Jw+ovPi9Uh4
	+k436Nn0ICiNU=
X-Received: by 2002:a05:6a21:3383:b0:3c3:875d:7053 with SMTP id adf61e73a8af0-3db4049d144mr17326088637.8.1789467018087;
        Tue, 15 Sep 2026 03:10:18 -0700 (PDT)
X-Received: by 2002:a05:6a21:3383:b0:3c3:875d:7053 with SMTP id adf61e73a8af0-3db4049d144mr17326024637.8.1789467017652;
        Tue, 15 Sep 2026 03:10:17 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm14244091c88.6.2026.09.15.03.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:10:17 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 03:09:59 -0700
Subject: [PATCH v16 04/11] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
MIME-Version: 1.0
Message-Id: <20260915-kaanapali-camss-v16-4-c9f3f6f4180c@oss.qualcomm.com>
References: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
In-Reply-To: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfXwfVWX9KNsRvL
 l4TKcAYJcL1g9qClG7nXO5WNt+vgeTkkxJ9X9q6kjy7JuktmyzPYgcbwAW7WhWJ7of7I4tRbz+F
 dkrYXqOiMW8iqtbG9pS7qI6UXxPy2JYjS/gnbK9J1sGFCjx5eYTpaIqLwp2MWLkEUEjC0zXUXzV
 SIwsoNFAf/XvTObwNank5UBmF0YqbNsg5bpJVU2vHIQrMKXfEVLsbCwM90nxXO3luvADn8T6CrC
 9ogcF0fPTOEANIUNikPQemSPXH+80zwxVkdQLBoKxvBEksv7prIG0gogpKkHxVWAb0twRMifub2
 MYFrtUfufw/RVq+F5tThANCXwuLDSiiDFjAyPeI0tXImDt20O9AeW1IS4tEnfh43cMEEQEAb1Wn
 /CS+AFvi5+hsDa3fPsX8hkeaa1OlowdiN1nchsNUIrJCJJhHFCpll0g0njOnMJABu0soY85nL94
 ueEoH3QqO6hn2Ei7/Ag==
X-Proofpoint-GUID: GnshvYJK5GW2KwLrrxtklmmpjJgHLXtc
X-Authority-Analysis: v=2.4 cv=cqQOAF4i c=1 sm=1 tr=0 ts=6aa9198a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=P6Xs4Y00w1yHQXPR5eoA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: GnshvYJK5GW2KwLrrxtklmmpjJgHLXtc
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX61oEpcwJRhjr
 SHLvzoFwj2nlQt5w6a/esKPPRDxKf/YhJCZ0yQFYIN+1Ag7sxOqCQkjcffCOZ7Z3pmU+Z5V3QNC
 0vxxCTFn2s9leDsZ61fb2k7G1sDD8tk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_03,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609150146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_111021_330341_4E39D223 
X-CRM114-Status: GOOD (  15.30  )
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

The CSI2 PHY common status registers are not at a fixed offset from the
common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
v2.4.0 parts differ.

Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
no-functional-change preparation for describing other SoC offsets.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 +++++++++++-----
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b..8cd331cfb4b3 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -19,7 +19,8 @@
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL10_IRQ_CLEAR_CMD	BIT(0)
-#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
+#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, common_status_offset, n) \
+	((offset) + (common_status_offset) + 0x4 * (n))
 
 #define CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(n)		((0x200 * (n)) + 0x24)
 
@@ -176,19 +177,23 @@ static void phy_qcom_mipi_csi2_hw_version_read(struct mipi_csi2phy_device *csi2p
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 6));
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 12));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 12));
 	csi2phy->hw_version = tmp;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 13));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 13));
 	csi2phy->hw_version |= (tmp << 8) & 0xFF00;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 14));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 14));
 	csi2phy->hw_version |= (tmp << 16) & 0xFF0000;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 15));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 15));
 	csi2phy->hw_version |= (tmp << 24) & 0xFF000000;
 
 	dev_dbg_once(csi2phy->dev, "CSIPHY 3PH HW Version = 0x%08x\n", csi2phy->hw_version);
@@ -375,6 +380,7 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 		.init_seq = lane_regs_x1e80100,
 		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
 		.common_regs_offset = 0x1000,
+		.common_status_offset = 0xb0,
 	},
 	.supply_names = (const char **)x1e_supplies,
 	.num_supplies = ARRAY_SIZE(x1e_supplies),
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae007370..d6366f809e51 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -51,6 +51,7 @@ struct mipi_csi2phy_device_regs {
 	const struct mipi_csi2phy_lane_regs *init_seq;
 	const int lane_array_size;
 	const u32 common_regs_offset;
+	const u32 common_status_offset;
 };
 
 struct mipi_csi2_genpd {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
