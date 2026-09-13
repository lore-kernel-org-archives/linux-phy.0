Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B685BC88E65
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 14:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngA8VK8BQaHbGEnzuAt6j0jLdwPFt4tS5MAHgO3EhPw=; b=frFWfTPK3TtvO9
	KBI3MmnAB0qo2WvPdJ/23aQP38oNTENGxkuRDzyEewxh9dne+Bs+c+lp1xRE/ChWiAmR3Y2dTj/Cm
	NTNpqlV6CFP/1bn/yZmSrDJxTfEJSrIU2R+oZoFLA6Pi8DDGKQuC1TtOCZFrjkRUh6IQrUJrMKcfv
	Sgg81cemVjdY27szW/MGmsJhyoLLji92jen3wiVhEPi4/M0FOAi6Y0nLKR/g9h13XoqldzCDiVA4+
	E0gnklYC1KqdMK7h7G/W+T/5GxmZ/wedotc10tl25YvsG5uQA/SHlSCYYuay6RyQ/DNydIhw/6xKT
	rOQ6VXKKzqtmChYXNzbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOK-00000001igV-1YyM;
	Sun, 13 Sep 2026 14:41:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOH-00000001ig4-3keZ
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 14:41:11 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DE0Cei700132
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x0uly6JHLnN++DMu29WEaZNFPjIiWYw6gQfnWNoZwd8=; b=KhCZqfH5vXYGq+r9
	YaIgXXuVEHTOu4an/u+6WgHN8AQQ31XlHdE9KN7JDmbfoNvJzzHz5y8o7S2vtnIX
	P2ATiz1I5fdtN4jSc3fJNDid9Juv8hMzebrgFCuCFs5uKoHs75NL+m3K0eDsD5dg
	aJEJ9xAhcOzO4XsFIWmL5MfSIB78K+oAnkNHTDmw8JrNdMzVLax+/FyHXR7pu0fa
	9GTw9zkJdUZr6e/Z02J4DlsgMJ8HgED8SA7tWdox+c4G0emNviGVg4791p0jwkCe
	H/5KWenF/FQ8kU8xNFbOz9ixzCI5KybUmlN9EdzLIVnHtsB0B/5QWXBC0EX3QGmC
	qZRbyw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmywh3cas-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:08 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cb835525b10so3036181a12.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 07:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789310468; x=1789915268; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=x0uly6JHLnN++DMu29WEaZNFPjIiWYw6gQfnWNoZwd8=;
        b=KeDTmn5ABzdvExxNCqvW3GX0kAx5tb47J4RmmQTbVWDELSwsXdp5AEAi9WBVaw+qv6
         GoYmb9xR/2IkS+UMN4G8dbM8S48T/RFOfSjlm0HjXiwCCFvYa/VnlTsqI3kTTemej+0v
         17dQArCmOlvj1E6jkXt31SaOXDrA5y8VtKXuqvMisoU3gs+B/jVUBUIwapgUEtcV9KTT
         LtXSUJt2mWCijHgW7Cokw1oo91KhnbFd5KtY4WoMf1FuLyJtjY2m17n9l5GYzjOcevvY
         HG1RcGZIxjND6iAXqpcq+NsCa2PfNLA/PtVIJrDNANKDFNNvC9i63w517jckBy/IEUIn
         10zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789310468; x=1789915268;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x0uly6JHLnN++DMu29WEaZNFPjIiWYw6gQfnWNoZwd8=;
        b=oZfbhXAXWAY+SAORN49/TDyi/wlpAdN9tvbql95Zt+fNqPBYsqebxreGdHidBNjkHF
         ghQFeBORIM57+QhIHIqO0ogwDjK1iAh9uiwRFDvzwt+iYWpUgvuKeT8NTDPkS4lSiW6T
         /hHFV18zKT5DGFkvAKbv4QtTPsOhlU7P41db0FtGSZjKR+8gO7AQyUMRT0goVXfR5MV/
         uc78/wKyoFzqBp/DJTelq9a5USzvSFm0r/eVRtls0lpNM0tX26QjVIA5I+DTdxBXV8nl
         ccYBLJD8a0JWpHiHHd02z7gB6ZKY+i//iCENRgJuXDyR9HqbrY9d1ByjIZlerF1FEIqA
         IvJA==
X-Gm-Message-State: AFuF++mabe+yB6UXmZ0TFeS72KCuFLCXBjsG8nRxIzD2mkc2wZ4yLDg8
	vZwPMewNhsHJ3B+85TyT209k7bC1H9pCYDwmfuX7qNZ7JmUbdhOXJgGpHddFk/aQSxuI5np4Yav
	3BSXhyHv5ynmHDJFkCIVnUtwNHL5EaO1xKnpPfB/T+dWloVXrmf0elnghrE/r/TUnOMuW
X-Gm-Gg: AYBFou2MhEcl1ib9HRwD4I5xNVp/pAz4OWJsWIG4hY6Hify5k735hsXsr67bxHXvU8y
	KOAwO4PtFlOfY/7mZfagjxJ3nG/WVDg1FKAkde+svlLMQFdZB16rd9xaXObxSOswySf2ntRsJtQ
	74eKAI862+/+xi6VprNYCOOGkZ830GT51I8rynO878fzREEecMwBuDFkxSer96mMHcxN6955Ehd
	j/l7rlTXKDoftb8K8SRvFqr6bP9401vhRcWTYt1xVT67MYhUy4cMeK4sU5AfwjJ8DNf0Q/+1JIy
	f+xU8MBk6lFrJrM2d6q2MhuVwBT54+x7hrPdCEqkWThM5CdPLvMMgKSKsUubqao5nwFrsKKMgNB
	ix+7EO5DbeFiv/KdqhcAyPIFVjDSBaH1W6exzs/XZfG9/JK8/fjKNR55HY5n6d+B+qs35bQ==
X-Received: by 2002:a05:6a21:32a9:b0:3da:e7dd:45d5 with SMTP id adf61e73a8af0-3db0e485c2emr13344581637.20.1789310468308;
        Sun, 13 Sep 2026 07:41:08 -0700 (PDT)
X-Received: by 2002:a05:6a21:32a9:b0:3da:e7dd:45d5 with SMTP id adf61e73a8af0-3db0e485c2emr13344493637.20.1789310467806;
        Sun, 13 Sep 2026 07:41:07 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm2904705c88.6.2026.09.13.07.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 07:41:07 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sun, 13 Sep 2026 20:10:45 +0530
Subject: [PATCH v8 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
MIME-Version: 1.0
Message-Id: <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
In-Reply-To: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789310452; l=2358;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=Dx3ovNJlM9aS0KyPy/KkFqWuw6/wLLR7Yg/2GW2PrQc=;
 b=aD1Pl6wzsZlO8t0tJjp6+liaW2VZ55woEjDK4YgYpMdoEpojaDpkr2nuVijBQkLErVGWgXfUT
 r8s3M5rlZuLDT4F1E2SJuiyt0DwY4f+4hhOK9s1OzuzyzyemFuCuqXf
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-GUID: zE7ij8K_DiPZT70-hbJEMiZ6UFptpv84
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfX9VqbYygjQUL7
 vUyqkAOxxnKkMGeZGU47z3bs0dex8WM4j3E3sUKGwbfgoNcTbPqsFb6R5eltXlYupZHF4UwVVVY
 0eyoSjE9+sDiammKsVpKEjOMpKPyJ+xPmG7my7+8irxx3bEaf38HnrBUR39tT+W5kRlMCOOK5Vm
 mMmQnsmJcQSsN0vrZNVTy9NSqASaGl7MfY73YsWZ/SEnveruP0NdJSzdqzZLV6ARl57fetj+Wrm
 tY6vSll92U58g8TSnMeqNFC/XJqaq/T8/mrTxYC6uxBCP250uwYRLMB2hnqhyMbqeeblqnqCChP
 9jL7m5d3U95IZu4khjx1MS5SJQEnkJHexPHhhuEkDs1GlnrIhrlXGq+h/vXDAjEsW+veo+ShHTi
 w4DkvDr8Gau/5PTQkITraqKAdF57CvX/xySd/sGdNUbYIlqTgGbxSK1rrtJLvMbKAAy5omcN/gv
 va7LUkJ5A4N6vtJgdig==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfXxPkC0ibeqzBm
 uUm4ycfvpLIx7T2pIsw5bBPRxIK9P4FTXdx/xm7q9xZtK3s3pbFyBPHGsi1OhThnMMUH7wsTsAP
 j6D/roBOU9KPsFkG6JsRJBsc+OZLqDs=
X-Proofpoint-ORIG-GUID: zE7ij8K_DiPZT70-hbJEMiZ6UFptpv84
X-Authority-Analysis: v=2.4 cv=PsUG/AM3 c=1 sm=1 tr=0 ts=6aa6b605 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=YrurubeZKOWHlXb_luAA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_074109_949261_0505F553 
X-CRM114-Status: GOOD (  17.08  )
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

In cases like USB High-speed phys which can be either USB2 or EUSB2, it is
required to know the type of phy (rather than the operating mode) because
DP and DM interrupt lines need to be configured differently for each of
them.

Add support to cache the PHY_TYPE and add the following helpers:

- phy_set_type() for the phy drivers (like m31_eusb2 or snps-eusb2) to
declare what type of PHY they are (in this case PHY_TYPE_EUSB2).

- phy_get_type() for the consumers (like USB controllers) to query the
type of phy connected to them.

Reviewed-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 include/linux/phy/phy.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index ea47975e288a..038c2b58bbe1 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -21,6 +21,8 @@
 #include <linux/phy/phy-lvds.h>
 #include <linux/phy/phy-mipi-dphy.h>
 
+#include <dt-bindings/phy/phy.h>
+
 struct phy;
 
 enum phy_mode {
@@ -152,11 +154,13 @@ struct phy_ops {
  * @bus_width: Data path width implemented by PHY
  * @max_link_rate: Maximum link rate supported by PHY (units to be decided by producer and consumer)
  * @mode: PHY mode
+ * @type: PHY type
  */
 struct phy_attrs {
 	u32			bus_width;
 	u32			max_link_rate;
 	enum phy_mode		mode;
+	int			type;
 };
 
 /**
@@ -262,6 +266,20 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
 {
 	return phy->attrs.mode;
 }
+
+static inline int phy_get_type(struct phy *phy)
+{
+	if (phy)
+		return phy->attrs.type;
+
+	return PHY_NONE;
+}
+
+static inline void phy_set_type(struct phy *phy, int type)
+{
+	phy->attrs.type = type;
+}
+
 int phy_reset(struct phy *phy);
 int phy_calibrate(struct phy *phy);
 int phy_notify_connect(struct phy *phy, int port);
@@ -393,6 +411,15 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
 	return PHY_MODE_INVALID;
 }
 
+static inline int phy_get_type(struct phy *phy)
+{
+	return PHY_NONE;
+}
+
+static inline void phy_set_type(struct phy *phy, int type)
+{
+}
+
 static inline int phy_reset(struct phy *phy)
 {
 	if (!phy)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
