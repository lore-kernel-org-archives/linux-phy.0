Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D76DC53215
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 10:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WexFbtQzu80NziMj1QdukEzvhTcH7DrIrA9luzLmbWg=; b=c049+cH9ZWDRkc
	UJbrji/qi2gr50adglS4jcVTR8aTH6HLzns0DsZ6d1bNn39bEKlLRhZyJanp76mYpOcQiiMN2/5YW
	PO4Ech4dF+gnaCPv9+p6RKHD8IMEb5F5Q9cggYDKsfWSDRtfITKpY2spqyhZLAClaVPpeQ95n0RUN
	ZbTikUpbX3y9MB69Qeb6vrWxskPBl/ZMVg36aH+UEEvDuYQtyZYfbL8w37RpISCBGPSku+1UHheh+
	co4YFbzzxaZGZ3REy6raSXhFPTGfgPmgVW8mD9MMOKG9HgPISwa/tLx/TBXgaQB68tGUJpZzqodid
	ywIgJva9wxYiu0ATY1AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCj0-0000000G21x-3ynD;
	Fri, 24 Jul 2026 10:01:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCiy-0000000G20G-3roG
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 10:01:50 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66O4lK5A2137669
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gdi19UFzDjF4fKg8Tt5mxer0+svC1+wk4/8Ph5sdlFg=; b=j5dG92LYV2RX2VaY
	Dbp+tZ50In7fzwfdnE2PN5NTlCu+n1hPoru7G0rQy+OLwcU0cvAenl4W8pRYSY9X
	OtoWWA8QV6eD+4gK8Weu/YBji9Y0xfpx4fJ/HsQ4/fACxL81Qjcq6pU+KQCwQ041
	yejLLAFd4U6kvwIyA9GmZEZPLdCOEqBw+W97Wwg3njZS+LWPWbDqV+b8ZYDRz/EC
	qPAq7KvgfYukZUPGrsAxLvJPd19n00rFgu969zGsnLg1rz6ksoFi0bQ2oEvfHuCf
	wGhTH5b5I4kB5gdtThVDZXME+iaHQyacEV3ps48I96jMgLKu7rhTrit5IiOCItru
	BSd4Xg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fkqa1b8xm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:48 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cb5cc1e13f8so345375a12.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 03:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784887308; x=1785492108; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gdi19UFzDjF4fKg8Tt5mxer0+svC1+wk4/8Ph5sdlFg=;
        b=OoU+KO86Ii5CdAIcZ0ojoHqsFOtnW2pfoyv2e5e9zQICTm/VKSm3HkFRO7c6KDWZNU
         rBvSPWmTOeGU+/lbmUTWfvaY2S4embSzSUyPiJovcJA8iLmIpU2aKE83cYQfUgzG4GR9
         Nvji2nqeBITM44+1ZzVTM3vVMGkemH/u3eMt5zQRkfm2BQcKoqNhgbnvdw6YF9ptmTpZ
         85lqT9ggnEihM1ZJnjqI/aQi+HfWoP+y5txhFeDthX92m4gOK7SQMW5JbC9Zuxws2Aq2
         nlnxziryK0A1T63i1Z3m6BzSDN+NDIjBFX7zhPnPCDHRVWle2C0Ketigtr3eZYa1u5++
         wApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784887308; x=1785492108;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gdi19UFzDjF4fKg8Tt5mxer0+svC1+wk4/8Ph5sdlFg=;
        b=Q7qqNkI0hHtoLWXTLAc2WO4cE4LGCuXUGR7a7AvSetbITsJ4zpUmhbXaxn+9EEUhTG
         4QjRX9YXm1yCeN+5QJPji6WJwk7XBtV92b/u2RClZmRgkc7eYp1TqHoHpF6/HkCgkEtQ
         3UMtYwB5K5n+ZUHn0Ky7sZrCrdtIO/VBjInCZi9HTrfp0JwZsT/u3ninZL5zQQPa/J7x
         hEzP6NgzJe0tf9B8T72I7j4f4rnn4W2qFc3q45dS4q4mVawcuepahxTDYT6es9is1BDr
         TIaIoIYW+NABjAAeM4cuQlEcH/oBt+CBfUy2vND4dLBemUOsgLJ4gwz+M8SfK1mCV/v6
         cymQ==
X-Forwarded-Encrypted: i=1; AHgh+RpVX3ubCiv2cMOr5n2H/603Hs9JRmmgnhrVKd6Udpk80QtcBLnWy45ZSYzBXPb1x3znz1V/8Mmsajg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZK+6PIHX22udC6DnxygejRAQCOKYJ8rI8BM8r1YUnps85qvoS
	g3Uu9gvxVu2lwTsdORgKfAtcZ/SpqYLpuGcj18ovaggjOu5xrtePF9HEsabOSNni0GqQ0Hf5kht
	55/KnnhzaVJZ2MqZOkXtfwYEZ8D74tMSY0Uhk4Y1WTngvSkjrd4kiwA7LiAWbJFOXLJHU
X-Gm-Gg: AR+sD10/kTgfyN0fip0SvgHKyWjrI7f9XctFHXWij/FMdvtR6cO8DjqV38d641Wyctn
	kaLYlobU3IdxUlvpf35xgi60qCdWh92lrAuP2GPwz4V6xMUT2ARNFTKmeUCeuSL8GHuRgPYeKxS
	bqVzRO9Z95taHB5cUfibh64S+rn85JHS8pl/cBFtquNx+SimL7lt6gUnvOteQr7fIkgH9sbDwkj
	kgRrFEs5ATSyUUqiBANxYVzY5R0UjNqOjWOgmjbokA9HKr7bsiYcW5qlt9+tAkPCkcNW1uLrvDc
	yrZyfoqxnyVEfGtfCczl5eNhUG87aexpK/Ul7/6/cUoh4L0E5ugX97qdoXdxW4CXzwUbWHYwxA7
	OWkp3r3PzGOc0VwGXZEFkkXcbRs84RnSBsPcmAFzMKlHtVU0=
X-Received: by 2002:a05:6a20:b68a:b0:3c4:3b16:2979 with SMTP id adf61e73a8af0-3c44b051f78mr7464825637.30.1784887307723;
        Fri, 24 Jul 2026 03:01:47 -0700 (PDT)
X-Received: by 2002:a05:6a20:b68a:b0:3c4:3b16:2979 with SMTP id adf61e73a8af0-3c44b051f78mr7464771637.30.1784887307175;
        Fri, 24 Jul 2026 03:01:47 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147e1c9289sm29515427eec.29.2026.07.24.03.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 03:01:46 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 24 Jul 2026 03:01:23 -0700
Subject: [PATCH v7 5/6] arm64: dts: qcom: mahua: Replace pcie3a/pcie3_phy
 with dedicated pcie3b_phy
MIME-Version: 1.0
Message-Id: <20260724-glymur_linkmode_0724-v7-5-65c8469c6b65@oss.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
In-Reply-To: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784887301; l=4308;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=X/OJrcxF0NvsS0kMFTEztosA6t5zY1MBw7n2lTxh6BY=;
 b=J0dW9JcahCqLRLyo3XcMMdA1IrXhnnUc8Q3lHNfTGcyzs2edhrWXC2unTkiYDSH5UkL0Of5EZ
 7zmR6JuhYR8A2desLv/WuKfoRlDmaw8evdxL5glGbf9N+2d42DkUQHE
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: SvAc2hME9gYZl9dkz1sg3WlmkAOBlR2a
X-Authority-Analysis: v=2.4 cv=L4wtheT8 c=1 sm=1 tr=0 ts=6a63380c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=ZTTPuMnDdfme7OPWMlMA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfX28SZDVmIIRKb
 uLL+Q4kSt6lj0jq0QAQEdPZu9mclWhND66MAJ1hTQForXcXm6URMUnIFEet6DJp5lXyh0/5fxCy
 P64N7V9v3nYdmm56KBRWist0spJWf6GCfbJuMJ+l617p34hiA2ZtjozdNr9aRj8IsKapAhvmcQ1
 DjMZHkho7Bw5gcr6RcCzyR0TX49IBxPO5XqyG5uGxK887ImYnrD5FoJbglCEQG/p+TbVg2yqKXL
 8c6yZQ5lkBPiROCjUe3KWFf5KSxjBzkUUje6FSuJ5rZPvuwl7Ch1RhwaQ5sDZhmhssb+rSE763H
 e/puEKD6AB4Vphn9spzbW0mAtE3mJmbeO5Th8xpMyVnuLsOv0l5icjW2XWrCKzswoPAJy+tDYKa
 ghzIZlwEpb2OxGadUGxoKvPJnk/Cei9Mfq42rciWC/G8bzm9UpmfarSsSZ4utCbIf7bONyKD368
 4E1N1UEWJEB56c19Sxg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfX+zM5Pr0P0D0/
 +uW5WQnuI9EYiVR/N/8PG8VT6Ws5ScmGyhVLDQ+UxvK89sjeT1CmCimFSoELCOc6WQgTEz7f1Bu
 Q1l7N4c0BV8F7FxQ22P6bqXw10G5tOE=
X-Proofpoint-GUID: SvAc2hME9gYZl9dkz1sg3WlmkAOBlR2a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-24_01,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 impostorscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607240091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_030148_961358_106E6B76 
X-CRM114-Status: GOOD (  11.74  )
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

Unlike Glymur, Mahua only has PCIe3b wired up; there is no PCIe3a
controller and no shared Gen5x8 PHY block. Delete the inherited pcie3a
and pcie3_phy nodes, and add a dedicated pcie3b_phy using the existing
qcom,glymur-qmp-gen5x4-pcie-phy compatible.

Point pcie3b_port0's phys and the GCC pipe clock parent array at
&pcie3b_phy instead of the deleted &pcie3_phy.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/mahua.dtsi | 89 +++++++++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/mahua.dtsi b/arch/arm64/boot/dts/qcom/mahua.dtsi
index 22822b6b2e8b..3280eb96d61c 100644
--- a/arch/arm64/boot/dts/qcom/mahua.dtsi
+++ b/arch/arm64/boot/dts/qcom/mahua.dtsi
@@ -22,6 +22,8 @@
 /delete-node/ &cpu_pd16;
 /delete-node/ &cpu_pd17;
 /delete-node/ &cti_wpss;
+/delete-node/ &pcie3_phy;
+/delete-node/ &pcie3a;
 /delete-node/ &thermal_aoss_6;
 /delete-node/ &thermal_aoss_7;
 /delete-node/ &thermal_cpu_2_0_0;
@@ -79,6 +81,52 @@ &config_noc {
 	compatible = "qcom,mahua-cnoc-cfg";
 };
 
+&gcc {
+	clocks = <&rpmhcc RPMH_CXO_CLK>,	/* Board XO source */
+		 <&rpmhcc RPMH_CXO_CLK_A>,	/* Board XO_A source */
+		 <&sleep_clk>,			/* Sleep */
+		 <0>,				/* USB 0 Phy DP0 GMUX */
+		 <0>,				/* USB 0 Phy DP1 GMUX */
+		 <0>,				/* USB 0 Phy PCIE PIPEGMUX */
+		 <0>,				/* USB 0 Phy PIPEGMUX */
+		 <0>,				/* USB 0 Phy SYS PCIE PIPEGMUX */
+		 <0>,				/* USB 1 Phy DP0 GMUX 2 */
+		 <0>,				/* USB 1 Phy DP1 GMUX 2 */
+		 <0>,				/* USB 1 Phy PCIE PIPEGMUX */
+		 <0>,				/* USB 1 Phy PIPEGMUX */
+		 <0>,				/* USB 1 Phy SYS PCIE PIPEGMUX */
+		 <0>,				/* USB 2 Phy DP0 GMUX 2 */
+		 <0>,				/* USB 2 Phy DP1 GMUX 2 */
+		 <0>,				/* USB 2 Phy PCIE PIPEGMUX */
+		 <0>,				/* USB 2 Phy PIPEGMUX */
+		 <0>,				/* USB 2 Phy SYS PCIE PIPEGMUX */
+		 <0>,				/* PCIe 3a pipe */
+		 <&pcie3b_phy>,			/* PCIe 3b pipe */
+		 <&pcie4_phy>,			/* PCIe 4 */
+		 <&pcie5_phy>,			/* PCIe 5 */
+		 <&pcie6_phy>,			/* PCIe 6 */
+		 <0>,				/* QUSB4 0 PHY RX 0 */
+		 <0>,				/* QUSB4 0 PHY RX 1 */
+		 <0>,				/* QUSB4 1 PHY RX 0 */
+		 <0>,				/* QUSB4 1 PHY RX 1 */
+		 <0>,				/* QUSB4 2 PHY RX 0 */
+		 <0>,				/* QUSB4 2 PHY RX 1 */
+		 <0>,				/* UFS PHY RX Symbol 0 */
+		 <0>,				/* UFS PHY RX Symbol 1 */
+		 <0>,				/* UFS PHY TX Symbol 0 */
+		 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+		 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+		 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+		 <&usb_mp_qmpphy0>,		/* USB3 UNI PHY pipe 0 */
+		 <&usb_mp_qmpphy1>,		/* USB3 UNI PHY pipe 1 */
+		 <0>,				/* USB4 PHY 0 pcie pipe */
+		 <0>,				/* USB4 PHY 0 Max pipe */
+		 <0>,				/* USB4 PHY 1 pcie pipe */
+		 <0>,				/* USB4 PHY 1 Max pipe */
+		 <0>,				/* USB4 PHY 2 pcie */
+		 <0>;				/* USB4 PHY 2 Max */
+};
+
 &hsc_noc {
 	compatible = "qcom,mahua-hscnoc";
 };
@@ -115,6 +163,10 @@ &oobm_ss_noc {
 	compatible = "qcom,mahua-oobm-ss-noc", "qcom,glymur-oobm-ss-noc";
 };
 
+&pcie3b_port0 {
+	phys = <&pcie3b_phy>;
+};
+
 &pcie_east_anoc {
 	compatible = "qcom,mahua-pcie-east-anoc", "qcom,glymur-pcie-east-anoc";
 };
@@ -134,6 +186,43 @@ &pcie_west_slv_noc {
 	compatible = "qcom,mahua-pcie-west-slv-noc";
 };
 
+&soc {
+	pcie3b_phy: phy@1b90000 {
+		compatible = "qcom,glymur-qmp-gen5x4-pcie-phy";
+		reg = <0x0 0x01b90000 0x0 0x10000>;
+
+		clocks = <&gcc GCC_PCIE_PHY_3B_AUX_CLK>,
+			 <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
+			 <&tcsr TCSR_PCIE_3_CLKREF_EN>,
+			 <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>,
+			 <&gcc GCC_PCIE_3B_PIPE_CLK>,
+			 <&gcc GCC_PCIE_3B_PIPE_DIV2_CLK>;
+		clock-names = "aux",
+			      "cfg_ahb",
+			      "ref",
+			      "rchng",
+			      "pipe",
+			      "pipediv2";
+
+		resets = <&gcc GCC_PCIE_3B_PHY_BCR>,
+			 <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
+		reset-names = "phy",
+			      "phy_nocsr";
+
+		assigned-clocks = <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>;
+		assigned-clock-rates = <100000000>;
+
+		power-domains = <&gcc GCC_PCIE_3B_PHY_GDSC>;
+
+		#clock-cells = <0>;
+		clock-output-names = "pcie3b_pipe_clk";
+
+		#phy-cells = <0>;
+
+		status = "disabled";
+	};
+};
+
 &system_noc {
 	compatible = "qcom,mahua-system-noc", "qcom,glymur-system-noc";
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
