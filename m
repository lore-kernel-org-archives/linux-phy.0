Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD0A606A335
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 09:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Bm+KLpJr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=TLKlw5fi;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=O9AUI7dz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=5coKEWuJdabg7U4Uz1aTHy5KnnEnCrFdG5/BChX7BoQ=; b=Bm+KLpJrgQ5KVcF5mS4wn5gaGk
	sdcMxbo4hb/A5Z+zmHvBERO2u2rRxTZJwT0NSo4EHd+8gfvS5qlp2sJWAz61SNmxw25l6Up/S91Lz
	KNNHsqFY0KkeilX8UFCLXC537Qau3GV+jO6rAmHBai/XoAdxdf1oSO7J3c6PGbU9tgvS4R/8bebgL
	Kyi3pDvcT6LIE7cJ4l6HAcdwjuN/9ESyPjxjGO1j4R2HkPCJoruEfxcTsAPOxdJXXvK70G9p9iYz+
	IcNz2pDrgvx1+K5t1Vpz2Dwfb5pC0S804DgqraenEqkH/rGQThIiVSrZP+3FwXym44VNtRBpMCDTz
	XmtFzw5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHCu-000000026Eg-0QKw;
	Mon, 26 Oct 2026 09:41:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHCr-000000026Dg-1xNp
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 09:41:30 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69Q4aPpQ2222515
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 09:41:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=+e6aO/DBAk3mai+cjuiy6QYgP4Tjql273Pk
	qknjpX/0=; b=TLKlw5fiVJflwNmMuvHHaDIZeW8FtofXsBWrpqFH9qwQUABl0Gh
	AU8r42ModYcPvZ1Buvvv1tM8hkcU/TZUudtyN/z4janCRPTeDx3jZWmRMxeivMEl
	BE+uXHghim1wLP6HMr3JHZExVCJ5XnNnAlf9pD1qnEDXNyaW+q0NSsMVxvM0S8RI
	yWtqwsSd3Yd75Tf34xG4eqEsZX80uZkQhe1YC9MdQ3hdyoj0fVth3MvB11Q5hKkw
	S4mHKV8sJVEepA3ldZKeg7bC3gU2P1oNJIWYboCOtE4YEKDIgMSKcAuJzH6cvjUW
	gKydjrlhBA9OBytHAt6Qx0F2eP0irtJaYfA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hhvdd9gsa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 09:41:27 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3ad91787a1aso1982618a91.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 02:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793007687; x=1793612487; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=+e6aO/DBAk3mai+cjuiy6QYgP4Tjql273PkqknjpX/0=;
        b=O9AUI7dzpREJvuIvAR6KBl6d8W5D3xnJrSmPA7U4K9M3pGRjtrIJWsMpddWY0032jk
         2a7guWLKIldnGAfwGvn85SP/VP1b9F/7hJVVdvknoNz+UZjymrHfxyr+kTS80Z+4DsUo
         G5YqO05oKpAruV6h5vRmJ+a/65B4yYIAQICfc4NuwxydLMswCy1FEyxF0Y/sgcoYUJ6k
         hTFqYnFoiIf5uu5TGwV+7X/ItP8sDu5H3wt0JPx1CZb9R7yHMXikWTSFIQ0UMUoPIMO6
         n9CjUSP/stFdw6XxBwS6jexNw/rINYLmmUd7MzRcHt1tjTAreLAra8E6aCJ/X7sESVvR
         X49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793007687; x=1793612487;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+e6aO/DBAk3mai+cjuiy6QYgP4Tjql273PkqknjpX/0=;
        b=aBusdhgBKrojqw6BPNyrdvNgFD97Z5TjpMnRLzsNh1l5ALn0bO2h3soJIWHJKBIvre
         pUmiRFClzlTpv2gKmLHgyl5oc6/rvIfgmUJnLt130uoiA6mXM5JYGaB2rYVS7J6uGLAO
         lJQtQ9ZWVxw3SU2U0wbOvAp7mas9/9NvwCDGR8780xzwxN5nODKEftigCvJeHE1o+SVe
         8BvHJNcG+auQmWJNCS9EhVUyHOzs6u5VBi1JdGYtgPqSMw8Sm6m/5jd+Z48JITYf8p1q
         clP4eCPeP24lmp47LdVa14l84zlsFDuhjvIdH0db1KD9gUNNLw+JQ1ssCzEaoi3rwlig
         1SLA==
X-Forwarded-Encrypted: i=1; AKwUvByTc8Xu31ZFunWvlNHKv9eeO1Nt4VpDAGf9pIKGaD8P+d7gFpFCm1Gtr0jH5mcecnGRWpAFSwEoaKI=@lists.infradead.org
X-Gm-Message-State: AFq9FYKo743ACWZF49E4cURcF7cZ/DQdUORTYdUR8XqxfGbq9MZtHDfY
	rfWBzl08XXg6pkP1KuaeQgl0u7hUN0Mz9iYz2TbCBz/hHPaXo6d5wN/z322GvSGCESu6Vvbp5CG
	hqEEJhUt9IROCOCIRh/FQ3Qz0n1eZH8fnalTK1k8/Z5CgwVN1nP65Vn8utVvoTMmfJByE
X-Gm-Gg: AYBFou2UNQZarQt2UyxWnYqho3hpqnhqjuoJovjA14ePT2A9vULV5d4lcoKhKn/K6+U
	DsDqtoefBQYt8VLUUxPLwDeFn4m865f1fS9B783NKxqig0ni/MRQsWzwRXDk2fv384QwSyyJSjo
	bvOsv73mVQM2Wq9xC2XhH1Bk05yOlUPrFXAXxRKpFdI7Kt9mNkEVNIQhOmAEXJpqOT0fxo6EySG
	5N0ed8AWhtfc4jKAWyic5GgLQZMPMQWoHvMKtbU8JzjBCTKxzC6GzCIUG+6R/GTy9DUf9I8OizV
	az7NHUT+fiBK9x3heiSFI4Sl7t0EQmBp5QtODbZ4knu2aVi5okQL5m3pYPx6K45zINl3sg8LJ0w
	UTAWfIDIgTvkGdz9lATtRqvTlsCA=
X-Received: by 2002:a17:90b:5647:b0:3ab:f38:2b43 with SMTP id 98e67ed59e1d1-3adead4c290mr4669291a91.34.1793007686680;
        Mon, 26 Oct 2026 02:41:26 -0700 (PDT)
X-Received: by 2002:a17:90b:5647:b0:3ab:f38:2b43 with SMTP id 98e67ed59e1d1-3adead4c290mr4669278a91.34.1793007686213;
        Mon, 26 Oct 2026 02:41:26 -0700 (PDT)
Received: from hu-vhiren-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3adebfa4102sm7847966a91.12.2026.10.26.02.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 02:41:25 -0700 (PDT)
From: Hiren Gohel <hiren.gohel@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hiren Gohel <vhiren@qti.qualcomm.com>
Subject: [PATCH 0/2] Add support for SA8797P in the phy-snps-eusb2 phy driver
Date: Mon, 26 Oct 2026 15:11:16 +0530
Message-Id: <20261026094118.3264112-1-hiren.gohel@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 8PvJkdOGuvhpEbVnbG5QjOkpSBWsgi41
X-Proofpoint-GUID: 8PvJkdOGuvhpEbVnbG5QjOkpSBWsgi41
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI2MDAzOCBTYWx0ZWRfXwOkkCNRlmvrx
 fkRhWNJE/ypXDuyaSddMMT0ovUGZ38mHgqhqPM1ZUtfI1Jy2Fg9UWQc5zseTgqz0ByCnwb5uXW8
 mFkmBMhl3fOtgyw+S6pgMsZt86cuL7A1N89/gz8XQMcHNgfDX4VW+PivIUyYMheYKdxWdz0yf8a
 hKE6BsNRmFs1l6Q96uUN6jMlqKJCKBau1O33p4vLXCWcQmd8/Iuj0ATwkBSs7YW9JdPQ9PrKXfz
 OOp7ipxNQsWGjzfE72UmHnOMi00b7vnBOgYICmG7Zu+seMsd8iJmdIA6iCYlE3+Uvoj0jrwEM1f
 pJeZA0OR+8EegtrN0oHvJr2gP/515pEtaQ070KQZ/K29rqQid2nqDsNzqlaMY8u77ovog1kmQmX
 1amowzfnVHBj8aHszp76utTxSdYbYivCZJbBLPb+pZZZXcqX4PdWeBlPeLDZHE6gdCqCqK/C5pz
 1BOHxFeCfYdJkqF7RtA==
X-Authority-Analysis: v=2.4 cv=N8+8hG9B c=1 sm=1 tr=0 ts=6adf2047 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=Mr6FGUSrUdoPtvCTGQUA:9 a=ZXulRonScM0A:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI2MDAzOCBTYWx0ZWRfXyMcZ8eOXBPQA
 IaLAHxI9a0kWUGmdBMEiz/8m/h9VU7b125KUnMRjS89CUnCCpBLitfu9YMy32w6a+dFPTnaFDvB
 G9emv1p4FkhMRZ5VhIXKZMDIX7yyKsQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-26_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 phishscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610260038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_024129_627682_78010BC8 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Hiren Gohel <vhiren@qti.qualcomm.com>

The Qualcomm automotive SA8797p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power on/off.

Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
whereas power domain "transfer" controls clocks and interconnects.

Hiren Gohel (2):
  dt-bindings: phy: qcom: Add SA8797P eUSB2 PHY
  phy: snps-eusb2: Add support for SA8797P

 .../phy/qcom,sa8797p-snps-eusb2-phy.yaml      |  68 +++++++
 drivers/phy/phy-snps-eusb2.c                  | 183 ++++++++++++++----
 2 files changed, 208 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8797p-snps-eusb2-phy.yaml

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
