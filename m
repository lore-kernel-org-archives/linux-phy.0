Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3B47CA5FA7
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAPGdZf/fZ60HX/GEQRAj91tZ67loXcuL7Tnx6NqSqU=; b=wbgJ6LTO2JZbrK
	5HdqY1N0aJRy70LZR+O1fTQosKJptqXo7L6E5OF+B/+kE4rhhC0iDZ1IMS2wa+Na6AQsziI8yt6md
	gkln2h8aD6zgXjXRuRNpEyME6TXNqj5c2RIT4buH4HzA+u8RUe6qVtFBIx70AcQtWwNvs/vOqPeND
	PsDdfy8cfeubF1AAOkZnz4cF91O+DSgFW5qD8xBQHf7KVGtipzHgo+gQAV7v+TaKhl0vIPvfvZ6vi
	35cIGulSzAvNw93wRzufaHVbJfp4LY+HqsULpAh9SfC140t/WpafakJWMrBFXuYm199G7k1ZyQV7s
	H6+l0mN9Rmp2LyYvVgaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQtV-00000002OsR-2ZUc;
	Tue, 29 Sep 2026 06:00:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQtR-00000002Oq5-0iaP
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:00:46 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68T47efV3654905
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TSSINV+dZj2OXNz4UWPYAT4M/ULxuq0D3kY0/YhDsUQ=; b=Q9UZRBESwxa427iV
	zYcF16rx3BgqMFpAnE0UZgIdCn8gHcyGim2mxeXkEl5VNuCju6pwR7QWN/eekE4Q
	4xhPF9K5O+4OKZmoh1340bjY1oQRrvex1FHGq3fg+Od2t/uHOXTWLxhIzVxeNSgX
	2jID+6PV1tBxFaFUu25A36J+jepeio8Jfn+1W2XzD/J5Jn8i25RLHo+lGTsKpqrg
	MzGO8CE2Vk88/GpLm/y0BBwgJtDS6+OxNTicv7L1/uS+MseGQEiRrUnVtsf/LwwF
	ghNWk1h8QQFgXLenKshoMo2nkq/uyFd42n3GOY+2dZ2utxSU3CQBougBqS86sil9
	UShzJQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h03ew0w23-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:43 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3a4a0017549so593775a91.3
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 23:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790661643; x=1791266443; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TSSINV+dZj2OXNz4UWPYAT4M/ULxuq0D3kY0/YhDsUQ=;
        b=BHmuSlLcrB9ZeBp04XpnYEAZvgg1Bgk8uqHRqXl2Xl34LTZp4k/7e0dLdvLd9Bu/S7
         vQSiGt0ET115qieQsTLRGkbEZUqH94eZJz8xKNmLrlrIEC/rjcoHsuRHbwH7AgG31PVE
         5aKhW7k527fo4fY15TSOT81pVPNplvZVP/BrhZKMY1EjIII0VsxldvVT11KV3iBX9mFr
         nMXtDvarxiq1CxOlBrWmD/8TrBCLCawU3xw+u3rgEpCB1Qhke3KatMvYvt/FWwgnermX
         jCAoUM9HYhJ71ZrHacIBxiQLLxeFCKvuxSlJykRk2hbjetd9h0+yGh0sOtGcwBMrBX43
         Y/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790661643; x=1791266443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TSSINV+dZj2OXNz4UWPYAT4M/ULxuq0D3kY0/YhDsUQ=;
        b=0xOJq3OWGkE/DBDo78hygeKaiU/k4i1E59OzetJ1vfgSOrnxyA59B6I3JbxkjyCpj2
         YEL9B58O2hoJd5eSRwh9BuG2DrPymNLjfUAEtEc+l5695nReaNXljRTiNWikN17Q+KKX
         WnelyXcbI1yJTf+7O3uZZr2YN6DQtYCIqITf8XSmFth9d9R0ci5uhBtGm38MtzlqPvbO
         tFlchcZ86Q7I0Uowx1aY6S/6bIQkcBhfsKN4S37wMupwy9iE6TY7NQiVJB1EZuSTSBMI
         KvW97CnSf3Dd+tnIv0YJvLCz04oicepcsQSFZhutbs+WKzDF+l3eONhL9CeIAwNzZVIB
         k2qQ==
X-Gm-Message-State: AFq9FYIG2Fc2Pd03eAtxjwwVW63Rrz9/voAyVbBNpmMflSBG1N6EdAg+
	5w5GBI5usO5EtKq+YcgM02R3s/kmb8v+OLFi5nj+ra9agc5tGRCp7wYviLqK5S9vRF4aLGuz+jg
	xMk4WCPzGrlBcHSt8iXu2fvYYulVX8T0qG0j0JXZns7YsE9WleUDzqo8LH8C5CSMRSdLt
X-Gm-Gg: AYBFou0fa2PHl0ixycCJ0P25FqsGauXIOOOaVU8Cj5/ePy2cAjwt81Q4PZgEsscCdzd
	7nrmO3x1TNdcMFBygbyRS4h26K7Po4KqZDH7f5Cvqy04BMkGFWYtCnRr+KnN3dC5aSDQMTkPipl
	IEkkkC+K1xmDtOpIT/RsVhFFFWC9wzxyuMkepfvh8HMKgbgdHzFm2MQ+JYgND31bOWDN6kdjTuw
	NAJUPTPNC1sBE7yBt0S43gUFu80Jg5a8fXWIEdN6IP1NWPbXJQ3pFX9F/oD3RGZoAKSqSB2u9aE
	K5qIFDVDrjCL5nHwUajPTPbzzz5Cpo5zJvgvO/o6YAsvGZDUoNfjqm8CO7nPgeS86FCBbgWCTeF
	3DM1r++KNjnqKMzvxFIPRGTaVYBzh8Wkt28lW4SndX+Zvrtal7HP15HpSv60DZsUjNSrMSq2gN5
	5kPhUUbS7vxg==
X-Received: by 2002:a17:90a:e7ce:b0:3a0:2662:815a with SMTP id 98e67ed59e1d1-3a098db8c10mr14573798a91.43.1790661642648;
        Mon, 28 Sep 2026 23:00:42 -0700 (PDT)
X-Received: by 2002:a17:90a:e7ce:b0:3a0:2662:815a with SMTP id 98e67ed59e1d1-3a098db8c10mr14573757a91.43.1790661642186;
        Mon, 28 Sep 2026 23:00:42 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4985ff0f2sm3383588a91.8.2026.09.28.23.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 23:00:41 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 28 Sep 2026 23:00:27 -0700
Subject: [PATCH v17 01/11] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
MIME-Version: 1.0
Message-Id: <20260928-kaanapali-camss-v17-1-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
In-Reply-To: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
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
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfXwG2uW4juM6t9
 KgMqY2CrI9gU35zzXUEPN7OubGdR/F+8ABf7YuXdK/NsuOVZ/9Z52MNE8VoT2T/hoGTIhKANdx9
 qRMLSE90EZf8KAw7FoPRovNDjFZ4sNE=
X-Authority-Analysis: v=2.4 cv=IIOXmQvG c=1 sm=1 tr=0 ts=6abb540b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=8sc_bQFcTW-iTt5i-CEA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfX8H7UTtg8KpXw
 aBsQJw7sG5O25yk2mmuAFFBwKaZ/uClrlv108Yiyz3np3jdlNBoMuEgE2z5k7IOOrFcawcgI8vW
 unM1HTeXmmBEg67HrYJHRebMigoCswWUdATlEu6TFqIaycoHeERD/jXjms83diubRktgo9XWXwE
 efsgC7gmznSLPCBIanE4DSYYd7yceZ6LZXlYIw7uldGDArvtCENsaaQY1K+5qcZFH2qCXfyho09
 G32wZ4RBoEr1gnNr5LPzvvgeJ0FI9Zb5i3411PYq05ywlVQrcfzGRXDgQB7ckundO9etQOf14GI
 FiUsS9owvlguAOGfP36v+3XfGwW+hpuHgul4kupB6Nkqg9C9uG2+I0DSfQPqXl+oH1uWlXHBKWi
 ZzsX93bMPp/CTOqr0HfT+OjnwHjO3cK8ZmxCOtqTPrW52xvXT1SJOrv+EDbV6AZvHL3gkfm/Usz
 OnPxpryD2yFujkQQzyQ==
X-Proofpoint-GUID: 9iEjwzcjsYQplKPMYIYfvsQpTsRop8A_
X-Proofpoint-ORIG-GUID: 9iEjwzcjsYQplKPMYIYfvsQpTsRop8A_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-29_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_230045_330596_1D78C207 
X-CRM114-Status: GOOD (  11.64  )
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

The Kaanapali CSI2 PHY is compatible with the existing x1e80100 CSI2
C-PHY/DPHY binding. Add the "qcom,kaanapali-csi2-phy" compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index dc64af97da6c..24ca06b97656 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -16,7 +16,9 @@ description:
 
 properties:
   compatible:
-    const: qcom,x1e80100-csi2-phy
+    enum:
+      - qcom,kaanapali-csi2-phy
+      - qcom,x1e80100-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
