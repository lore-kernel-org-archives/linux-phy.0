Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F4F5EF070A
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 04:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TdvYYdxlfRYnLgx3enB80CD4YoVkWi8bmB1c/4eMHLU=; b=4vew33P3OA4i/E
	uD6MHTaZb124F85+ucwPSqwfUqi5UIUolq313v0K4dt+TYWCPiGS0Q+pvPyhQ2fgMzASqRhUuGLwJ
	jzg5djFSts7vwJMt58l7x4lL+qQKIfMpluZ3/HKroR0mJUKj3UlEUIKJgZUm3ZJy5c6yuY7RNbF5P
	BHixqwxQ/EeBz/0t6P+VKyFwvTAWEgByejuY6nDpysjC01txU+TFrBUIUT4RlhG2ICHOozsP5GNOK
	hUBmAQP/KSP0Rg6rUnCVzwLTjs2hGJ8zyqY0VaU21i+7j5FFGbiSRunW5gD/d6A/cILhz2slcgl/v
	6gRm2K8EQ7o48QNDQclg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpJDW-0000000EpCZ-0EIY;
	Mon, 09 Feb 2026 04:49:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpJDT-0000000EpBQ-0hoj
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 04:49:44 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618NhVLl1808230
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 04:49:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=B23Em0WW9IOUwSPkLdRB0r
	J5Swd3p6Us5my6HB1zSXM=; b=RISND8+M4MJPqJP6Bvj1n2Acyt9Sfenk2RGbM7
	vG7NcI/9vbxffENYK7Po+bXB4+cVbRxDGGfkEln3YbOfDw/2hs9x8usfzwYzkwx+
	A2nRVE07o0DCqI6P2ABO8a/Ups5dzj4fQU3whG79T9L3cgjE5JR8dKcIcckAEgtb
	VSq23Mnaj8xon70N2Uk3w1X+CLNRR+RRj6hBNHRL3/I/dKaR3riwKdeH0JCdLOWN
	TCziUlO4VXMj7DIwB80SPyhKPEggrQ71q7RMLcYzX3FERgia6SdpmYE6aktoFw3T
	Yjryz/4ZelacrF9v+ghoHL0WO/7WTzv6p/yLLd40P+jxwruQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xhrbm9h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 04:49:42 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2b86a963e9fso454779eec.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Feb 2026 20:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770612581; x=1771217381; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B23Em0WW9IOUwSPkLdRB0rJ5Swd3p6Us5my6HB1zSXM=;
        b=TxnTJD/F+YzQTNVFv+XDpRLm17fnEA7gj8dUh/zDMDZDP55hPbNdcPY23fkBZ/4pCq
         yX58qZnBMMsn5fsMmJ7GYKOsQ3psNJF/T+mRnQzOBbf9+1OCMIDUjwnzxXDqXxdsOEKS
         1qepaUEvGlM7bI09+uGrj7s0zHb4R5uxlc02s8jXXQzNQxFv1gGvpA8noCol/sDdh3/d
         Jl1MRLRvajfLzVYKwa6zK/30AGrrFID9S2G/8VgGG5CfKzaobFtanRvxI24pxYIz+tkl
         iRrU02yiQ75IX3JB85W2RqqgNoYf4/pfgS1K/f4u1XDuB9v9PJmP3tOnAzJ/ylWYC94H
         Tk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770612581; x=1771217381;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B23Em0WW9IOUwSPkLdRB0rJ5Swd3p6Us5my6HB1zSXM=;
        b=hKhaXrhyINWBbjcGqQSPFfMm3pT9lWioefRAl8PKoIw0wToGRa64385o0eXXi16Tex
         O/4V46t51akI+S3WVXcBSB2Hd1AdEb/SRSJprlfUDRkY6SxMdAobT+wWVNDD2nEVK11n
         Bncd1RTmC0zOONpBjKfOf4iCLPKA8+4/Ap9zN3s9ZM+K2crqrpApaaII+0cpNp9u+MNf
         KWWUiMX//n9YbyFho/v6LJ80ITGA6hZe6jl3TBPyYkIfTgm28G5aUXnMe4s4myJYUzqq
         XQKocsS6aexEYwwY0q5SjCrB6twMJmCRLugKFa3LBXCc6677Pkdc59smvkFbGvS8DaRF
         HkYw==
X-Forwarded-Encrypted: i=1; AJvYcCW6GRuBiFvUu4pa97bor8k6BCSBPxj3Ctn3JgERb/Wy1E3JtjLCaTbvtC0J/wHvGj4ITEs2t0PbSN0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy52DgPOAiHXud9ur8TVSPeVQniibmNzEQUqNOw6e2CRJ8r4ppE
	MLVSAsZO1qdI29ihileywonDspvqo/sqhpeIvMy5fLIJzIzI2gZHHVA/k2O/zvaEefjGL6pMsgC
	loTm2C2NDssADh3QDFaS41fBtpeV1wxqNwFXLm8E1ROqo7rpvtyfaxoXU2CwGO5Ruj/AX
X-Gm-Gg: AZuq6aJMUwS/5Vdd40HMapsrxMzsQFjq96SSPnYUKyhg3W/0SDDnyHq/42ds4cPiEB+
	KeOcW3GiqDiJH0UFi8u1j2s20+1nrBjrBhH9AGcZzw8LLGxAsUkDTNFLxSGTyf77W7ZATV+OqnQ
	ZTNicZwiI+d/LomGrJPppq+/OkdwoUGiqPF8vWWJ29gwLoMUxhlgzFbQpFIG0gkNowDnzyLRCwN
	j484XONv3zjLybYDOs1dNNXsOP/FGbNrA2zMtmd+cIO+8lPzWtayP/a3iJ2AM+Zo+ouMc7sBlF3
	X8ZRPk94W7Wdys2qYPNNdCZz5Bm0asg9fuUEIk/WQLqTK54qy1t6rms5rT9zqeVzmJZCG0N0CP4
	tmibjUww7UCEuYQM/qMqhA1BQCBLMKY1wqcqyzwPr/wqMJLU2jU1dayKQ
X-Received: by 2002:a05:7300:641a:b0:2ba:6d87:cf68 with SMTP id 5a478bee46e88-2ba6d885c37mr942313eec.16.1770612581318;
        Sun, 08 Feb 2026 20:49:41 -0800 (PST)
X-Received: by 2002:a05:7300:641a:b0:2ba:6d87:cf68 with SMTP id 5a478bee46e88-2ba6d885c37mr942311eec.16.1770612580715;
        Sun, 08 Feb 2026 20:49:40 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8647bd6casm5609940eec.7.2026.02.08.20.49.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 20:49:40 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH 0/2] phy: qcom: qmp-pcie: Add vdda-refgen supply support
 for Glymur
Date: Sun, 08 Feb 2026 20:49:38 -0800
Message-Id: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGJniWkC/2WMQQrCMBBFr1JmbUoSSSyuvId0EdO0HbCJzWhQS
 u7u2K2bB+/zeRtQyBgIzs0GORQkTJFFHRrws4tTEDiwg5baSobIYZxCFKN0VqnB+KMxwOcH7/j
 eQ9eefUZ6pvzZu0X91r9EUUKKzpxsZ522zt0uiahdX+7u07K0DOhrrV80h2ohowAAAA==
X-Change-ID: 20260202-refgen-f0a611d5c355
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770612579; l=1560;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=APF9k6j1Z9hdQxx1Oyhs4DgyrehHijEPvAVAhIG/xKA=;
 b=GohXl16p8xydv+2G4JUayXabZI8SuH9LA2jMwhRlcZaUExTSuv0PgdTXnETHE/vx8vQB96Wq4
 NSkN4ThX8OIDItm3aHG/Z/ferQdjzhXk5IUri9p/VQEAvS5GBxDw1xx
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: 07D8QrFMqUP9TNfjUtJS2ARXVrPU-KrN
X-Authority-Analysis: v=2.4 cv=AJ+v8NAg c=1 sm=1 tr=0 ts=69896766 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=ht-hxK4C9M4zpVAjTLEA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDAzNyBTYWx0ZWRfX+XNNIyjkOAx2
 zhzIEGCWDvvxOtKRknwJGuA1m7LX5vLwEiPNZDEU3B+2KLQrUfQV2EAMF9gFR2b61NeI/mTXyq1
 MzuxSkPLHgB58q+Q2RdLTSSXfGdwitieR+soATtYKVXp+ebH/LdUDv3qWYWxpznWcChuhXZk6Wo
 ppCA8A0o8V0mwZb8woLVNLKkX0Kpnl3RGlPaxUqqqeYdMsLts79CqVK5d8JOzlLyr2kdsg/fHWq
 CAkmpcTp/A2L3OaQfZvyhxSzrj3MIZwqrMPTRSEm+FMDtNBNqlYBL509cVY4gurBTPbS84fevpC
 xecUdkfwpMHz6rMsOGWDQXA6N+6XExIHno+4E2cNOovqifVrz6ouH92AUM/WJAe4AQZzSsnLbY8
 mtfegVWD/fFZ2K9hSyPNgdbgELaSstVLSS+UPD+A4wTBNJHJ+mPxM8BkdM2LsEWy1kFq8QEscpN
 ZQrbIlTx5kMWtHMOxyg==
X-Proofpoint-ORIG-GUID: 07D8QrFMqUP9TNfjUtJS2ARXVrPU-KrN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260208_204943_223671_109DE699 
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

The PCIe QMP PHYs on Glymur require both refgen for stable reference
voltage and qref for stable reference clock. The refgen requires two power
supplies: vdda-refgen0p9 and vdda-refgen1p2.

Unlike qref, refgen doesn't require register configuration and has no
dedicated driver. Therefore, the PHY driver must vote for the regulators
that refgen requires.

While refgen may be a common component across different platforms, on
older platforms it typically shares regulators with PHY core or qref
supplies, making refgen supplies map not very clear. Glymur introduces
dedicated refgen supplies that require explicit management.

Hence, this series adds support for refgen power supplies specifically to
Glymur PCIe QMP PHY. If other platforms require these supplies, support
can be extended in the future.

This series creates a Glymur-specific supply list including the refgen
supplies and updates both Gen5x4 and Gen4x2 configurations to use it.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Qiang Yu (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add vdda-refgen supply for Glymur
      phy: qcom: qmp-pcie: Add vdda-refgen supplies for Glymur

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 20 ++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c             | 12 ++++++++----
 2 files changed, 28 insertions(+), 4 deletions(-)
---
base-commit: 8bb92fd7a04077925c8330f46a6ab44c80ca59f4
change-id: 20260202-refgen-f0a611d5c355

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
