Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B29CD3445
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 21:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sg77X+QUsgjyffUePnhbwXKzzEB/FRgBL9F0qUymVnw=; b=HeaClfZRfzdKf5
	dij7yHe1QnKLnrJaeaNnil4+Tl6PgK1TMnvXlrldvEOMKjF8A89cncDwsIVz140wUrYfqEmXvXM3S
	OVCm41bpxX6eLjBJ0TxFEMM+WnOH5DruWCwUCHCr5NeI03OazSsacZ/yufH66AmmEd09vRVQeukAR
	R0svpoeZaFQKUhQIe/ieoBJ24iVs5sROAguWZ0wz+iHg4DdCOcZ2uY4+whE1MGSDphZu6G8Oa2Qa4
	UZC46skTYK3qGtWvGlYGASCTE/IqfILxgD6WyxloomgN/khVVHDSQbd/MepvxHud8wgd516gp6wiN
	emK0mUOKEDEkFp/hnyuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSom-00000007Z6v-2eyd;
	Fri, 08 May 2026 21:33:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSoj-00000007Z5o-44uy
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 21:33:07 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648DMaCa317550
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 21:33:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=P0+zhgaE3hW
	Bq02LPyDgy1/Pf5uTZKmDwz1w7Oq2yFM=; b=TnXIFhwvCFXHd3NzBoJOuqmulVI
	BsFegiBMN6lDhSECurXZLcl62T/xdKmB0p1j8my8jMFlCmEaq7KY2JTDXJK9Z7va
	TRufFBqVl0VNsRsBcutr5FS3yo2alYwzVItmMhwSMcXFM/2jgLqXDa9MdGg0YAIe
	jR4uY/UG3ZcfZ/C9Y/45OYG3NLIJKiqqt7ZrgcArvm0AkGtyQCNvinKM8L34ESMX
	TqsQ9WuohNxpSdtobFVLFEOkNqyjUVywE7K2uTExMfHylpD7ghjYgorgRvGQds36
	td8SDEGsaFbm0BN3d/TX8qQFgT6GzPPq6oA53P76XY8mJruvGExjt5LOA+w==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1bc037sa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 21:33:05 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2f485961555so6414402eec.1
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 14:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778275985; x=1778880785; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P0+zhgaE3hWBq02LPyDgy1/Pf5uTZKmDwz1w7Oq2yFM=;
        b=CfytJ5FOn9qEIoVfxxShSPf3IPDD+YV/zjcS3XhMB19niCV8KEWXfecDyJK+0N1dM8
         hYWZVTK4WAB6QeL0VPkBJNVnMZTkc4gLN+zxlvaYUNxuzefCnby7MNs3g5F3UHNr4mca
         Qd/bsr8EMWxUiP4L7uJl94I5GfB8eR7zY3hTvDj95ukkXIVE7iLsTmoMb+PPN+6zlqGf
         mjOlhbhjbGrDRjmf3H1DuatLcOA1wRe/xu3lfEYYCp5s6NdNzvHufEiFxLKZpdb+yR7N
         jb8AgilaBD5P+vNdo+TeMr7ztf1sub673adLcrwg9uRJU9ABetZIXWxS0tZzVPYxVJJ6
         Pj7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778275985; x=1778880785;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P0+zhgaE3hWBq02LPyDgy1/Pf5uTZKmDwz1w7Oq2yFM=;
        b=W09hexMm820TQFa99N3oop3K7l82eOAPTd+3Nv0Dwkhi213ZkbinkqjjZNYMk8Lqt1
         f8aYNFMpbIa5aArL/Hrs8GeYh0/eyC0zx8c4uZdas+gRgMVW82vBCofJCv04yFHLMyd+
         HHwl4yjMXeB9glVStVXEeGzyCkWgD4fXq622NvARKygtqnJli3+AFKuhR0TQNRuQ0w/4
         CvE6esI2FW8tSmhiv6YWwhL9AHBG67HSVlAk/j23DC5rH7sOA/jnvT/g67DIs7gMapcI
         lN6FnU3g278YNz90gHCT6MFLq39H65hhZghM2D69MiDlOzZaqlSKDPtJIDIk4V3yu+r0
         A8iA==
X-Forwarded-Encrypted: i=1; AFNElJ9A44vscwomsskElFcffipRtWENNBQBOcczWdQJx7MeFMsxQB5av1iOXy6VLRulB1xEzigrxEvH6tM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwO2sHg+w84K8CzUWON7G7nJaNh87M4RDiDiCWu3Muq7IXfdfBA
	YgIIXXM4iJkq8rwLv7Ae4xWl10StP9SsQaKs1jwp10TnDtHINkhFV4o7Ipioe37kchRfdmclLod
	hQyqQOA3rGuoZJ8EE2PusToFjGrqVxczqR8jXcytDB5x2I2TQ/Q3ZIxqKkz5S4hPFUrPW
X-Gm-Gg: Acq92OFaU8+tjyCr/O0JLAns5mBKYpS5uVF+kl8CRuB2Y7mymvn/aru26R39S3b8az0
	g9KlMRm3ec+UaGSsS2l20PX6dZmAsKUjC/vX0QrLK9H8TznV2vTvrdkXNBkkWryOtIP+W7N1IBh
	80NfEOPz6XqGghMZ72dGAjEoRGZhFgqrYTVCD8QIZ48lo7JffyLO0R7FmWFzdhFQDuQCIUpUp3E
	0+ZOPFgtfsGbBmwQHAti476sffpDNLoZZFt/zsUkYdxPc7HcefaxVQEDtizv8rtHPPuuXQAigbI
	IWSEqZKRCQ2q2q7i68UNKeBB74R82xwWcpB79wgV9lbE3+eJdtTKaV8qdWibpEsPkpQmYyOm93Z
	NsWaeBRi01VoV+/ZkHnlv9YcyeifZ1XkscVN0olpnUP2epZJDHD7SVkDpAUUk4AGiTFzZzeGn0y
	o=
X-Received: by 2002:a05:7301:e101:b0:2f5:5dd3:1fd8 with SMTP id 5a478bee46e88-2f55dd323c8mr5114665eec.8.1778275984592;
        Fri, 08 May 2026 14:33:04 -0700 (PDT)
X-Received: by 2002:a05:7301:e101:b0:2f5:5dd3:1fd8 with SMTP id 5a478bee46e88-2f55dd323c8mr5114649eec.8.1778275984035;
        Fri, 08 May 2026 14:33:04 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f888e3e285sm4871285eec.27.2026.05.08.14.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 14:33:03 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com
Cc: wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
        ronak.raheja@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Hawi QMP PHY
Date: Fri,  8 May 2026 14:32:31 -0700
Message-Id: <20260508213234.4643-2-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
References: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIxMyBTYWx0ZWRfX+OC6RvTzKCby
 eClhQELjNJf1aSHcWvQ/cxgY02Y5RREwbvLliusgtiPQU+5IxrXCNVAiVP4cJzL6Vzvz43sUv2l
 jPrfEX3Am+yl0n6cJfnTIhGsQw6O5nqZYc0VYNApaaKQLqj/vlvE+ReBAZcRSb2+32SRSzktxOt
 PoLCWroQrsSkytmYzHfjprxiKBH23lPUYJjcvpJa7D5viOPmaMGga8ECnxqdYeWl6W3sGyeErdy
 GWgUYn91wjUlLQTMo6Gs5JP7tGX9cOF08QXApKieh6I6JG/jPdNyBahunxK1Rj+7u5anDDO3XEJ
 Y6mMOPLsjK/PQBSYJQ4IeTGeeITgi1hDw5hv2ygDm4HJAO49Wi7EsdgETpyB1Lz8LWIMwxcXQ15
 GHvKLD5QykNM6S2Sxo+SBHf02SeSBggzko4qofy0U4UN39w+gGWfpprorJzrjdzJJpiWr9FoTfe
 enc5VPGKuUM1Zafs3cA==
X-Proofpoint-GUID: aN92l228D32hkR7lsOxlALpn_1WFI1IW
X-Authority-Analysis: v=2.4 cv=JJQLdcKb c=1 sm=1 tr=0 ts=69fe5691 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=8IMiPDtIn6OAJiDpRukA:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: aN92l228D32hkR7lsOxlALpn_1WFI1IW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_143306_048562_4962FE4B 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

Document the Hawi compatible string for the QMP combo PHY.

Hawi uses a new QSERDES V10 register layout with a new COM AON module
and hardware-specific PHY init sequences compared to previous targets,
requiring a dedicated compatible string.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3d537b7f9985..7a7059c659be 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -22,6 +22,7 @@ properties:
           - const: qcom,sm8750-qmp-usb3-dp-phy
       - enum:
           - qcom,glymur-qmp-usb3-dp-phy
+          - qcom,hawi-qmp-usb3-dp-phy
           - qcom,sar2130p-qmp-usb3-dp-phy
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc7280-qmp-usb3-dp-phy
@@ -205,6 +206,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-qmp-usb3-dp-phy
+              - qcom,hawi-qmp-usb3-dp-phy
               - qcom,sar2130p-qmp-usb3-dp-phy
               - qcom,sc8280xp-qmp-usb43dp-phy
               - qcom,sm6350-qmp-usb3-dp-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
