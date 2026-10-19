Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6FF1CCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 09:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDvQTjNkYmgDpPPiLcxDphh2uG6/Y9xjnuDwvpKaXNw=; b=gdfVncZ/1Sonp/
	gNTYSkiAZUy11WdnbZocqnd3yGCEHSZiOraTN97AsTU18lFhtyZTcEGaKdNGKQn4Ba6O6BpBVwG3V
	MkOKHr2JJRse4SyFFRXkx8w6OQBJlwob5bEwaMbcy+foXa3d6mAuJ2p2PxC08zb6opX3Hcz+FaEx9
	ABO11ucD+K+jWQ0aHhj7uGFGUYNtF2P+oAjPswot7sV1KMEtwr2CYsftM8qn8dUHeCzsBYEIBs/K/
	zU+ZN1gm8dCdnYj0xrbOL0jFoZp5n/a9BvLzFTwaK5CQ5htKZcxG3XAcUf1WrVXWZXzFf5D/E8rYF
	s6yY0IyF58/FuhV5TlOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjd1-00000006zon-2ZIH;
	Mon, 19 Oct 2026 09:25:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjcy-00000006zmn-1FZY
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 09:25:58 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J8OksX1348030
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZqNPgcDIDE6Bp0KwMFBvoaExUNRvYuzoKfkIwpxCEXY=; b=d2FkTV8UHXYJiKNw
	Ic9Nf4JeODiAasoFzuWwMZ2q8POGB2MzoXGNxB2LPYUEOcr4YLnaGALtx4pcLPkN
	RtHQiq/SG4xwaloHlwNIRjB68NhAs56o7/1RUAoW2mGs8mtSU8JnPkTARPN9vmjO
	UcvO4SuZHcXwkRDGanA+2h7XFjbIp8qVRWAaOKzfK2vwNj22ILXzmGBz3n2KfMtb
	EBColTIxKBUewnNOgrbMuBbWA8aP6VY6wmYNik4x+zydgu6hMEWfVH74Wme61ZM+
	x8inA8KSoQsiv5k/j/zb9O7klTm/OKORiVzSppyClc9dsofQHonk9WKoGqb2Js6Z
	n1PQww==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdf4rgc96-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:55 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-357e2bc3b1bso3324875eec.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 02:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792401955; x=1793006755; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZqNPgcDIDE6Bp0KwMFBvoaExUNRvYuzoKfkIwpxCEXY=;
        b=SdcuRjjaRRQ8Rvgi/EaPdGHxYduqVOv9F8gFVBibnkOGDxE1IigtrbuI9jjRdNJQ60
         n/qAbVAbOYIfF64aW5aeLDVDtNuLuqbnITPUYOIuQNBCdiZ3nlsUXmr6BdTOK30UPn05
         3dCcdUIeLxZwzXYFoYSrVwbaK0QVnDiqUwRLlrLtWGMW6DMHJh0Bnqguw+IGKoAZ34rn
         r4f+j3fDY2jjF4r52Xs4VjEQAuEqV3hXMEKwskTRmMy2EdGXqe8IIcJL9qqz15PeapvY
         JLdbQRyza6/ZyzFc6oeaEsbSoE0sf+CUHjk7Ag8Unp6jbbVF4s7AdoIHB0UbPPgPKMdw
         wMUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792401955; x=1793006755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZqNPgcDIDE6Bp0KwMFBvoaExUNRvYuzoKfkIwpxCEXY=;
        b=uynYSBqHu3kzQY0EqnB8sxfyjj7ILBxkNv5gpInAADf58rI6TEjiQKvGCvL1Id0ge4
         thtJFATtj7YZbbKGxXTFLCV0HRauYHBAqJLjHTlgHIZCvj5x79Cp5t7RXBpPBmHsivkc
         6TRGUOiOy+LWo9P3g0McgG+N1AtiKYASitPj8Bf2dR6XjBCVKiaR2MFvTvs3q79eMDY1
         rVyKJHoMHXE3DnONwvjN9WC4cCYGYIUeOp9yX06yRRyWVl5swcr4JgsEf/BevPZAYQFv
         NWvfMaJLk7+mjAHTJEKAq2zhxd+tVzT6n5zkbgHluk76ZXJdHmvF1n4T1WvBRPzgHE+z
         xwcw==
X-Forwarded-Encrypted: i=1; AKwUvBxaTRngDhzDcAutAZg8durQGPs8xypJXlF1daFZOSu5iQhvOphOXVuJ+EEBShkLCAfkWcMRwrBp+8o=@lists.infradead.org
X-Gm-Message-State: AFq9FYJKXm8YAe/PkWNPuA8pvw3rrjgTRyzApcA4xzqkVjZAo6tdC8Kp
	6nczuqc9XcNY9Iv+VEl+tS+mtB0MaqfsshxqPRZ9FPJqKq45h/2VM3arxOTKnpqw1XRPFH8rEk5
	cVHYZf2ioUR/fBlV2VG7pUrUEW503axhc9VvG7bjnrcu3C5Ta7zp4uYAkXqNveLY+iSAG
X-Gm-Gg: AYBFou2WxVXlhFyCjdzqt7+Igbtiy4iWO4yy6/D7xHJoIP1Y23E133vFGiiQFb7Lcci
	IawdgNSS+eFUHCLNiYalIcmHpvGUDdquShqdMHI1liz/NKn4eFv5ZWgfjWmR10xELN0PObnfI0x
	eyOHjLG42ba9jkVJRQ4OKIOe5j9/yWZCvyPS0xa0MPoZHsTnclCfapcqEfv/Qf4ha9ko7tr0Hbt
	t9hJiPQxCJfw/CsOz5oRzaSuiS+PkoULsP1nGMW7YHlsbd/bz7iY4M1xlNvurpnpg9zcC7C85wT
	P2WS3FWcCZFIoRNsJfSMYI7G7DF7g3yrAWVEhENqMstZzalOASn2fqZus6tyiC0t/TcRpTf9xc5
	Zw7ZoGPJBFj9hlnAIUfVhqxcUM69Cg0cDzw==
X-Received: by 2002:a05:7022:170d:b0:154:d06c:e70a with SMTP id a92af1059eb24-1851285ca17mr9769410c88.23.1792401954802;
        Mon, 19 Oct 2026 02:25:54 -0700 (PDT)
X-Received: by 2002:a05:7022:170d:b0:154:d06c:e70a with SMTP id a92af1059eb24-1851285ca17mr9769372c88.23.1792401954201;
        Mon, 19 Oct 2026 02:25:54 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831c4d4675sm26682584c88.21.2026.10.19.02.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 02:25:53 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 14:55:13 +0530
Subject: [PATCH v2 5/6] arm64: qcom: monaco: Fix pcie1_phy compatible to
 list qcs8300 first
MIME-Version: 1.0
Message-Id: <20261019-monaco_ep-v2-5-852cb9f5d012@oss.qualcomm.com>
References: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
In-Reply-To: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792401919; l=1159;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=lXeO7bP7idTFtUBzuKbosYtATj9Ndsw4dWgt9vtKsn0=;
 b=sjm+65Ib8YrCBQPt2R/Zbrm5GYLWerivul8CnzzIcez5z+2TGxqbmoQ+cWL8+ZPUBvyxNeUU0
 zbxSJSxjNTFCH4PTwZyc3qwws3KG0sTG5DvGKJYveBomSlQsGmUVvcH
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: fk8YsLSUduRe9DYeeaG8rfGFWdUCjd_n
X-Proofpoint-GUID: fk8YsLSUduRe9DYeeaG8rfGFWdUCjd_n
X-Authority-Analysis: v=2.4 cv=H7NOUOYi c=1 sm=1 tr=0 ts=6ad5e223 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=_k9ig2nQFDp-gxZIyLcA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX9Jlr99efqfru
 s63M1HeYDYCcgeqq1iGuzFwXx/mv/8DwyyQHyVOwB+XuCD23nPGTxziaQwAshd9NKxK/9ov9d/7
 BPGdoyGfMnZGmFvwUkkz5o+ppwgH5cfNIrlNot5fRc0cWPUhKNiWhud+JvplkT3TLdxdPkbjWMx
 48DUAqXCNFYmvDF7Sw6AT3Df/PsUTzmDmXw/dyPpacsZNloJ3T1/mcsdgadhvo+0dGsRwoYcN2v
 rqFZlz3aOGiRczYc3kdTSvFzfQPd1bHouSc7TpB3ZO8p2pGcAQ1mP5PqZXEkMGUOilBCS2+BdJT
 JzUaS23K0yZHSQCouyrLX0wQM38k6ZNrEKYaH/Alf83NhMRr2JyCS03LPVeLrtHqshGpv18+DYX
 gBlNnIXWs0WjikOl9SqXeGWHR5oGuk68Fd4pmE0XDDeSthwgxHS7tr0Yt9caUVnEWa0UhGogvld
 VwQ8yvBz6fxGAkGTLYg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX2Jw69gBcFUgo
 L1CmqgA5bln8lpws5XNkDs/ex7CRva04O2xDHgVLxWJwWrXfJt8uQ/ZWo7AHOeGv8pK9AT4Rwjm
 3w0QPUIxB9kiVGZuff4+CMzRICFCO5s=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_03,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 suspectscore=0 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610190037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_022556_346237_A9FB668E 
X-CRM114-Status: GOOD (  11.90  )
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

The existing pcie1_phy node only listed qcom,sa8775p-qmp-gen4x4-pcie-phy
compatible, since no QCS8300-specific compatible was documented for this
PHY at the time.

Now that qcom,qcs8300-qmp-gen4x4-pcie-phy is documented, list it first
with qcom,sa8775p-qmp-gen4x4-pcie-phy as its fallback, matching the
order used by the pcie0_ep and pcie1_ep nodes.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index cfe39f923224..d7d135e87a8c 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -2597,7 +2597,8 @@ pcieport1: pcie@0 {
 		};
 
 		pcie1_phy: phy@1c14000 {
-			compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
+			compatible = "qcom,qcs8300-qmp-gen4x4-pcie-phy",
+				     "qcom,sa8775p-qmp-gen4x4-pcie-phy";
 			reg = <0x0 0x01c14000 0x0 0x4000>;
 
 			clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
