Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35D5606A339
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 09:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SONapbMG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=l9bOV39p;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=B5qAxVIR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=UM9MYKufZra4Vp7sdCwxS2osQiEZzZ+rk/HCYggsSSU=; b=SONapbMG+EGMCFr+VUPCK0fKRg
	6fHys5PbVxAoWX3PzuFzT5UHxK+n13naDXWs8uh6XQDQg80/tSCk3kGGobTjCWcXxlEqN8MzCUjLJ
	D+NnFcHYxMA3+4+CIJaYlOE238F82gQTS9W6Wi6n/+BbzZG5foO5Z4rRJXWaAG0gb0gRoEeAhdGSh
	ojRXTjPbgpIoV6qo/EGFgOscF42uuWicqhqW3f1cILbbEWb2rdY+UZgxDqDCz8FU/+SdTzBdT/KNK
	CZZlkKZmR0LyapCWE/GIOj3gMz+8Sf18kTD/cOlWcpATi602BMN36aaZDh/HVLJ5cfVCqdq1ziu4p
	2BV7Ri3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTyGw-0000000BN3Q-36Dd;
	Thu, 19 Nov 2026 09:17:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTyGu-0000000BN33-2kBP
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 09:17:37 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AJ6vEJk2935542
	for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 09:17:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iRu+0e76kdX//akRHnnQ8C6pYNUfCVw5ZqG
	NhNN2NXc=; b=l9bOV39pK/XM3+0uR75nrnQ2CFoHFxKyNKqf4Qi1dU8PGeF3Ua2
	UgM0HxrunHWckyjvs3IPc5Gxa7QcE3eAxEsfytNgNia+pDrEj1H2VOfuZTISHd4K
	hXII/yMLT9Wd//xL2Aej3YEp1ODw0RVDhDs2S2dkcPUJ+9KAQ0Se1z+uPuRVGZ01
	26DIBZrKYUN+4ih2F1viroU5xVf+bH5iwKqFVTbAOEfpRe6zo2KbrMeFf3IGtas8
	FzNwmXF2hhJfKNNtiX5ggEzIzTYiq7g6HzE/W2mcQgLmZwq8AMmWEZKXaGNuASa2
	Oid7ZD3u7CLejIekslqDftpufUfa0V4rynQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j1g9ekkxk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 09:17:35 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-384c78aa0dbso176399eec.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 01:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795079855; x=1795684655; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=iRu+0e76kdX//akRHnnQ8C6pYNUfCVw5ZqGNhNN2NXc=;
        b=B5qAxVIR5kWaiZlX0WnJT1DqCJdXDYK2rrvlXOgl2sYgdAuztMywxRQiQbcv72du+5
         44TwwYSaRc1/huZ0gDAaB8qmYWqxHz7jNtdqSQBd9b34gIMmnr6HATm0jQte/z6NSnJE
         gYzgqppH/hW4vakcEysHaZWO0S427mCltYoer24DbmSj9hrkq1mhH2pad7dPz4syZwr1
         1Vw4vPXj3MwQKSWc7ep6kl29t1sq9IX4Mq054kx9res+27bphzHjLzBwZ+PqW7zzJbJe
         oZDEER7RvmLkhwC0rs3xhszwJE6JVUgTmhyqJqt2n8+hoMH7i8zAy4A+VxZDHVYNBCWk
         Q7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795079855; x=1795684655;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iRu+0e76kdX//akRHnnQ8C6pYNUfCVw5ZqGNhNN2NXc=;
        b=qFu0B7BlHzu98cl2fw24cRVfoOzvZFN1H0Fk34a+sDBFJ9YywytDwHj/Z6mUwgrIVs
         XFbnbDkSfoqEe4IWSiRYjVSqVu8Dcon4k4FwRmvY6VSoMwO+8QwIHrlpTUdWZuFZEGsa
         cIi9RzQFEQnKdSR3gre+7HY7eqIcqKHMhHCHyIEHs9oXSHMPbGa02r5ZkFlUVMVnNbxC
         TMinOtEzym9ADuN9f85DS4khhqiO3hvXxbD2VTX4glyvmr3t3K2nCPgu2pNgVXp+2NiP
         XyDoSfkdWtlO9JYxbt7lPRLcyeKgdqNFTE+Za18Z4PBGuTwpev7FEw16tTEYyeBG7iXp
         Ehjw==
X-Forwarded-Encrypted: i=1; AL+hErGvSDrrBuLZjREAZj+Cbj/esNzj3an1gqafXXJmd9DcvBFfwfsJYpWHXFb4r8/CGziHjcoOKV22TrI=@lists.infradead.org
X-Gm-Message-State: APuU4Z/vzHfGOEeFi/zn7IFYKjO+Klb1g9xsvIjEF8anjd0uk6SAWM4Q
	TRk5DDBTGCIim8hNa+d5x4DwN4oAH6fCtyuQHK0BMEIQJTfKtTysF4v4fbURN2QV0/JLFLZoAcL
	g13yBZtsng9nopyiocVOpYhfCSF5VRRAJyDJeQcKzFvLIjoMn8et7iv3vHNQViZJk+2g1
X-Gm-Gg: AZFdTZd/LILm1RorOeIvqFLuIcuIlnCCgXu5jK/ccBU7neoIRity2WtfECcRgIsrQJW
	+QgFO/Dy/uDjxVueDQVLHT2KCiNyvbTbQnuXh0GRyvWDuDIX7FFQ45xpgCujVwyn2mA1AW1JoY6
	+/Zf73fwtwhiis98K4N6ouY8yr/65xRP1TsZnddw/vdEwhDvlG5tTPZryiZ5+eAArvcB5H+guZv
	zJXyzigzljmEpZpB0RToaCyl02OOYg5x8RX+vkZCG2My94OU43nCaKQuLER3ScgSmGVZylaxn6Z
	EZf86BcL5bNF83uOkGI5wdyQHKq/P/N6qKVmfJJksXa8QGzrSuRZlA+78ZC0Z8Tj0YV6KBpBW2c
	yiOpinHWqrgSK0b6Zi5Up4PS/+2BcQbfUxWvxicPshqbUdBkW+be7bpAOjTjjgr5xQLcYvQbetf
	d3sqDf27c1TMig0b0Sy8g1sw==
X-Received: by 2002:a05:7301:6407:b0:36a:270:ce76 with SMTP id 5a478bee46e88-382c39a3142mr4345519eec.33.1795079855080;
        Thu, 19 Nov 2026 01:17:35 -0800 (PST)
X-Received: by 2002:a05:7301:6407:b0:36a:270:ce76 with SMTP id 5a478bee46e88-382c39a3142mr4345485eec.33.1795079854581;
        Thu, 19 Nov 2026 01:17:34 -0800 (PST)
Received: from hu-petche-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3848dc19705sm3625057eec.23.2026.11.19.01.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 01:17:34 -0800 (PST)
From: Peter Chen <peter.chen@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Udipto Goswami <udipto.goswami@oss.qualcomm.com>,
        Jack Pham <jack.pham@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Christian Cortner <ccortner@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Peter Chen <peter.chen@oss.qualcomm.com>
Subject: [PATCH v3] phy: qualcomm: m31-eusb2: Add register XCFGI_159_152 for SE0 recovery
Date: Thu, 19 Nov 2026 01:17:31 -0800
Message-ID: <20261119091731.301966-1-peter.chen@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE5MDAzNiBTYWx0ZWRfX9wjA91tuFBCL
 1i6lDhdYq6cuN9WP76iHRv42NhxOP2iPg376YqpFkGoR5SVYfaX/YuThA1IqWirwOGSIEzXEmM9
 t4cgviQrhRMWwjdQV/ZKgXRV1GbWSXDTwVfmTlaDsXHjvzbg3UmD5xoFuKyPkX+tSM67v20Rrro
 85tcWqQABG94jrzkCjHw5CNoWZQxODeAp2KvDxHOBw26wLanD5GHLxqCERsRLe5bs2bq/HWPDsR
 ScmOPT6vLZikJcD0YDOnfbdZEWHGGtvR45PdXL8X1yPqvkfVZYnvXyVyahznS6LurlG6LIQF+j2
 OKkDnxjr0Ga3BCDNOMlVQQRbOBEYOLUqQB8movW90/cxwKuT45aDN/AHY1EIPLmeWWehSnm2S49
 5gsDKs0VStwNAB0+BmzI/cCHCJWQzymmToCRjf5p6kkhPNdnpo2U3RgEjDNkKld4ds3x9RTbhGl
 od+b8OLF5pAXqIxtQjg==
X-Authority-Analysis: v=2.4 cv=QO391QLL c=1 sm=1 tr=0 ts=6afebeaf cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=z4GiM80-XcyTzbghJJoA:9
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: yNqFHWilfn6ySrnj7ni1OvT4_crRFJJD
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE5MDAzNiBTYWx0ZWRfX7DAgAdNWe8+5
 VzZ13fxRIZNRmrWcYOoY5k92QfAPrQFNRMpL6hpB+uNVuaA48WWxeTavFOFc+K6i+JoGi2uN1xI
 vM88pAJbsnDjgZb78OL1L/SQU/hkhvI=
X-Proofpoint-GUID: yNqFHWilfn6ySrnj7ni1OvT4_crRFJJD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-19_02,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 bulkscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611190036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_011736_731839_C74E32D7 
X-CRM114-Status: GOOD (  15.65  )
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

From: Elson Serrao <elson.serrao@oss.qualcomm.com>

During PHY initialization, spurious pulses from external devices can
interfere with speed negotiation, potentially leading to abnormal
behavior in host mode. The M31 PHY provides a hardware-based fail-safe
mechanism for this, controlled by bit 159 of the XCFGI register.

When XCFG_SE0_TIMEOUT_EN (bit 159) is set, a hardware counter monitors
the SE0 state. If SE0 persists for more than 2.5 ms before entering L0
mode, the PHY treats this as bus inactivity and resets its state
machine to the default state. After transitioning to L0, the PHY
resumes normal operation in accordance with the eUSB specification.

Add the XCFGI_159_152 register definition and set XCFG_SE0_TIMEOUT_EN
in the PHY override sequence to enable this SE0 recovery mechanism.

Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
Reviewed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Tested-by: Christian Cortner <ccortner@gmail.com> # Asus Zenbook A16 (UX3607OA)
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Peter Chen <peter.chen@oss.qualcomm.com>
---
Changes for v3:
- Rewrite commit message in imperative mood, drop "This patch" (Mani)
- Reflow the code comment to use 80 columns (Mani)
- Add Reviewed-by tags from Krishna, Abel and Mani
- Add Tested-by tag from Christian
- Link to v2: https://lore.kernel.org/all/20261027015545.2758784-1-peter.chen@oss.qualcomm.com/

Changes for v2:
- Add Fixes and Reviewed-by tags
- Link to v1: https://lore.kernel.org/all/20261020061811.3127511-1-peter.chen@oss.qualcomm.com/

 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 275df38256de..70fcfaa8ced4 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -56,6 +56,9 @@
 #define USB_PHY_XCFGI_7_0		(0x15c)
 #define PLL_LOCK_TIME			GENMASK(1, 0)
 
+#define USB_PHY_XCFGI_159_152		(0x1a8)
+#define SE0_TIMEOUT_EN			BIT(7)
+
 #define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
 {				\
 	.off = o,		\
@@ -88,6 +91,12 @@ static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
 };
 
 static const struct m31_phy_tbl_entry m31_eusb_phy_override_tbl[] = {
+	/*
+	 * Set XCFGI[159] to enable the SE0 timeout mechanism in M31. This
+	 * enables a counter which assumes the bus is inactive if SE0 lasts
+	 * more than 2.5ms, and resets the state machine to its default state.
+	 */
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_159_152, SE0_TIMEOUT_EN, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_39_32, HSTX_PE, 0),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_71_64, HSTX_SWING, 7),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_31_24, HSTX_SLEW, 0),

base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
