Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37719606A89C
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 01:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uOgmTj1+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=CY7JYz4b;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=eWWfknmD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PE01A4+UodtutdR1M0fSS2202xB8MIwHOKKoYiTa+50=; b=uOgmTj1+vjalki1Tx7eMI5jPDZ
	fMssso0mIBp5B4HgyrB4lOIFp6/Il+hIlNtIYYIvXHI4tGgwoj0/ZDUpT3nEtqu836pm7jUAQ6wU7
	rAhXSp3LHs5omEPpz3jZeI+hHthNM3ZrzBNcbtsmUTiL9P4MFSq0rVL7N/E7VU2lVhc6kPBFxNgRo
	kiZIK7ZfbyIQ+JZo35F8LeuOE+AC9UbXnTyxCmpuHihvb82YquqsVpTshiOIvkQrRyCyj9vip2UTG
	7RidfQZFKNTum1mqn7/rS3rNQx2P5BKyd9GjDHYtY81NSHo4Ce+XZ5ERIhtTbh6FdNRuF1Y9i/2fb
	s06u9IQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Kc-0000000EzyP-41sf;
	Sat, 14 Nov 2026 01:13:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Ka-0000000EzxO-10t5
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 01:13:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADMbjEm2194076
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EjC/Uqu8Fpc5YyfEaSNx3RgivzcI3gmA2KSFjoMigrw=; b=CY7JYz4bBwcC7CKk
	4lP+QE1DtXSgTu/2oE89e6SrIMXJY/UzMyuuD3AT9QM9wnaUWUzmSJr7HbWTFcmZ
	BiTN/BOwSHO4L8RA+SjKZf6TQr0JOGj6hx2cZS+C9aFqnU0dOmcSwFr30Lilkddp
	fUUVatB8q2GswZInZx8dzUL3TqzPiNEUwjM+h0CAG5rwglR0Em5Njlvp4+8mYnD5
	pddU5RsO8aX1z9lnpDhnaCtYxWRGH+kBQgCwAj9RX9Vs2neVxcHZ/hBV9VT9WBfX
	GMaB6cxxd1oaQOZNiaEJHbhvaCCLSHCsc813D50DMfvgolAvGe+UjiYNpCE5+wSr
	Rnowlw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hx87ds75j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:23 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-378722fd4a3so1823782eec.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 17:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794618802; x=1795223602; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EjC/Uqu8Fpc5YyfEaSNx3RgivzcI3gmA2KSFjoMigrw=;
        b=eWWfknmDMwZ6toYGG9SiQ/ptG36GG0+zSO86j5llmPsaawqNNGRONqzmFl5kNFV8jf
         C0XbQjTWWOTn5cTXsxpOwCL1M8u/JK7tsl/E2f/FNws3A145fLzY+d/UGKAQJudCmqaN
         k4vCjGqo9XRwarB9OlkV9rGbXrm02v7SSCF6vxLWKH6+8v8RL38XSHjJHBh0fuObG3F9
         LT7b7jG4prC39XNXmzrNocLB/CwJFiwHoLDLmuFMKDzqmzLwbHxvlD8JGtq+gi9J41tG
         W745LHPeB8oLzTHO5DkGANt+e4bGfua7Ju0hxxaJ5znapgNWeAlIJmcvK8scEXQUkoNs
         8KtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794618802; x=1795223602;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EjC/Uqu8Fpc5YyfEaSNx3RgivzcI3gmA2KSFjoMigrw=;
        b=eHBkEKbvi13Dahs6ZlkpbdY8oNk96wWXvEGEcWvdD9GJ5/eqnZs1nSasRhlcU1kxuH
         F7m2aJstPwSHChGw4PKPHl7Gy192pewBHcNwFW3tC0FOgSP+yFy8LEaVJLAmawFVZ59p
         8aQT9vc04xk/Z+09MEjBj4HiKDyS6nqP3bzYl/Be95qrBrbyS8a5xF9ZJ+TjsMnZIn+9
         AWRO0LLHDU4spfmjLc9RRRo3wfehuajwI8urLNh5xpAFOvHWgBqQEn+YhTWI0ckvUNBz
         cVCbNmNA2R1uoaKppjzkf+0YxTCEVHuFtuMtHCvs9gfAW5rUii2hNj5Q3bwWmZXbY/z8
         VNyQ==
X-Forwarded-Encrypted: i=1; AL+hErHh+DoQnvvoXTLf04hNRKK5JG3RAimXNjBALXoowvo0HxiYIrdvgEqv2PUJk+MuLF27Nsps0OwOz2A=@lists.infradead.org
X-Gm-Message-State: APuU4Z/R11u3a+LMvtu40hBfI/pl+Obh5tOb1OdfnCHGRtDl7zlV5MDE
	xNF/42S6qWD+zTVw6s2MJeufBYJwok73HbZxDpeOktOjMHFbEUyufesrf3Wf/v9GSGF7HHsPfAC
	V8646GPiK2a1E8M2xH7hCmlXentP/TYLWu3WLSglbGD4cnQeLRxk9r4W3RyKKMUTfpBB/
X-Gm-Gg: AYBFou0+logsqEkHaG2NhChJ5s86qEh3U6UjXgqRGMb0i9+laJJWz4MYecjq3PU0R8E
	FaIecIPQvvz7CfBW8+D8PDi/8DtfSXGGtE2YyflhJy2Jtjk5xE+wGIKgshJxEjjg4Pp/ZGfAGeN
	46fQRUL0gTPGtnQp46kf/zdJWG+he0KPGbWQFFWHdw6JWC3lTgSjcpD7j8fTz9Tso1g+iGk21nY
	1oOl+A0ZyyiC66K77gpYY0iyGhB7jHf0dxLtNVB+bON8/TmOzEllNHa/FrRWKtbdfSXxJZiIaiQ
	O5xixWPhe6HqYDndvSWf9stD45GZy1rOkVu4M1eo7W9Pol1wsV8R2JSTaoKtOU39G0Q4Kx4/Vc1
	9JgyaJaetxRLBCrjKTntEC4PJw/ki3t/hFl12tPK3MxYLVwv2rOz93zGGs/IkoE7SIxmsoPEXTp
	ZYUdBJucBO
X-Received: by 2002:a05:7022:1e0d:b0:1b3:bae1:f5f3 with SMTP id a92af1059eb24-1b503068228mr3231051c88.6.1794618802313;
        Fri, 13 Nov 2026 17:13:22 -0800 (PST)
X-Received: by 2002:a05:7022:1e0d:b0:1b3:bae1:f5f3 with SMTP id a92af1059eb24-1b503068228mr3231019c88.6.1794618801698;
        Fri, 13 Nov 2026 17:13:21 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3795378d7e5sm10952813eec.3.2026.11.13.17.13.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 17:13:21 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 06:43:03 +0530
Subject: [PATCH v3 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 qcs8300 16 GT/s PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-monaco_ep-v3-1-7fe227cdfac0@oss.qualcomm.com>
References: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
In-Reply-To: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
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
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794618790; l=1515;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=bU8CCkmWS7rC2poZZ53djxBqRGU6cUp1YOnSmcwnl0c=;
 b=zMfsxTErxY8hECwKm/R99bDrh33rFO98c02vXxvjBrvEcS0wCoMcqiVEOgmOdFGkJv9hG3guR
 H5qzlkBd4oCBl573JqURKYdapEMgFG5Y0lETKX9JhU2KrJXGhQz7T19
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfXxkxDOcHQLMUb
 G7vmwigJMga7HRidrfff90qvWAtOm6215SQUFJkL1MDIsYgBn9Y/WG8aotdBT6bLvxIr0L5kjhA
 sofyRT4LkgtUai/U9gHyltnO5k9oDhrQT5lN1dzphVbZbaSeGIotjunDvohXhC/s+I4O0MX5SgT
 Ot0kTIt41BJpocsCRCdvqFZqwZf959tJmTfx+/UapoirQMNgNEpzmphHQLirHXilAmn8L0t+DCz
 6PVw4bmPtG6d1XsQOvu1+RR+q+ekt7GOZvJUKTRZpxvMsd2T7F2rMT3W7YVf4QZBKf/uBGg/yRY
 01ixVsfQVK4EV/UDex/ARLiHQGdUtL5d3G6fmDBJretytNjvCjW05t4X7taUQUU1kVWZBwrDeJu
 0iMr76wa/LdJ7RcVeJA6d3io54ND15RPyWGZzhEQ6RLcxgwspJpnCiEG0VlsLDGFBgAoi2bi8vp
 1qpO7MV68LEojuIoV5g==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfX//DaQad1Lt4Y
 teb9XPAJ6XzlKhnCDLmjWvjRSbvbZDe/jkfLYOF54iqH0IO2ElFZlWdQ8A/WsrmKh3WUgVSQdbW
 Md/a75M0jNEtYyb3GWe34LycdJ/RUuA=
X-Proofpoint-GUID: thVymqw01DPw49t8T93ulowqkQJ4OwP_
X-Authority-Analysis: v=2.4 cv=BusIUoX5 c=1 sm=1 tr=0 ts=6af7b5b3 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=LyAK_bMyhA_l01y8gmIA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: thVymqw01DPw49t8T93ulowqkQJ4OwP_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_07,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_171324_473348_E5EF7309 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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

The QCS8300 16 GT/s x4 QMP PCIe PHY was previously described using only
the qcom,sa8775p-qmp-gen4x4-pcie-phy compatible, since no QCS8300-specific
compatible existed for this PHY. This was a mistake, as it left the PHY
undocumented as QCS8300 hardware and indistinguishable from SA8775P in
the binding.

Correct this by documenting a dedicated
"qcom,qcs8300-qmp-gen4x4-pcie-phy" compatible, with
"qcom,sa8775p-qmp-gen4x4-pcie-phy" listed as its fallback compatible.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index c0a3e1f160ad..8d0924fa928d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -24,6 +24,10 @@ properties:
           - enum:
               - qcom,maili-qmp-gen4x1-pcie-phy
           - const: qcom,hawi-qmp-gen4x1-pcie-phy
+      - items:
+          - enum:
+              - qcom,qcs8300-qmp-gen4x4-pcie-phy
+          - const: qcom,sa8775p-qmp-gen4x4-pcie-phy
       - enum:
           - qcom,eliza-qmp-gen3x1-pcie-phy
           - qcom,eliza-qmp-gen3x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
