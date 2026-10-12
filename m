Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FC01CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/uXD851Fgp+rlngr04Tcc6fVMC71eJaU0aXq+6Ssdg=; b=HAh4ExXi+nL5as
	oVDOofqafXCsjcUXHdYRlIMALduwKzrAm994is9IDGMlN2adJfUb8M8J1D7Is94nSEgy59cMdm8AW
	Oya6ZIQeOPcUliH8ue7TDbOtVdmes1nLgBXQt/GNQ7UGx3VpGHGM4baCRykv0uLSFtrrJJyTNc7yO
	/LwDgP4XcBfnl70SCO4LGb19n1d7G4SZ1/M9qFEezqw37fo4WeGrCYKMvE5RNreVYzaFbh8DEdmBa
	KE0HTK9erKEZ6AaQq5OVw5TDkWk+j1tsbrY2qRaB+U8FZyZTvzgh7scMbRtLyyj75zQfl/KXZcb3E
	/T4Mn5f0iIafIpGj0atw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG94-0000000AaWp-3Nx0;
	Mon, 12 Oct 2026 13:32:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG92-0000000AaWB-1RQE
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:32:49 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC0JIm802223
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:32:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZGDJDRLWbmhL036D5uBETPd4vljDxOvm5TNYzKP1bqs=; b=QI5QQAET4yMkS9gt
	c4A8N8spreeYatTVGYi1ytTGS+EYe5PU+LDqU17kGLBLp4ib9YheJKvm2rqM/ayf
	0m+ifYkvjnBqS2CFnpiaBoIu7ucg8EF2zFGakvO2H8Cdp8hnygl8WNW2O+kXLKsy
	q9Jgj9h9BBbWHXUmB57JoWiXIQisFhFJlZujcxKHKb0a15Lim7PU8ILFcvpptm3d
	QWpG3E7Xxhb2NZQ/pOoiioeRRAO/CAwutKCgzIfFM1DqC9REl7cYDX/vop75cfDH
	z/n0+RMBm/6knkGzUEASoHS+mW5e/LnzFlghZ1ETPQp7dqPyPR57npMefMbi8QX3
	YdWbkA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8wfcrw7m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:32:47 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3580c07911eso5213383eec.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791811967; x=1792416767; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZGDJDRLWbmhL036D5uBETPd4vljDxOvm5TNYzKP1bqs=;
        b=GVMMERSvLhWB/ePSYzJnqgixFKFMbOYKQxEjjTQBuLy82XCZbGw1fx9TA0uAYOKjUL
         WywZvh+pGmJ4iVTy5zJjvEtTd9R9DEWtnrRI2K0u+qWJJ8ksbBqQ8e67NnK3HHop5cDX
         GvFF3cLXXUfstmUcqYanTSlCMt1cjjRTR4TEyIMgcuGQNNqUY2C86zY2AmZaRDqjZkA1
         37UcYxtOb+YxDzIg8Ej9AEubmMLsrstOo2EXVde168Q6+35elA/bkRkGP7/9inXEW4bY
         2ZhBTSSCtALhyMwk3z+f3zPn+LmrSXVtr1i5hlIWg4Ry3KfnjSfao2lAKeJUITSOILzd
         XhRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791811967; x=1792416767;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZGDJDRLWbmhL036D5uBETPd4vljDxOvm5TNYzKP1bqs=;
        b=oPuPjraCActUI4hBaWeUIdNXa5FhMfnF5wrbM6qpUtSp/KGffzIFlPI/kNeD5pxTl4
         rs04aX9QrZ/j46ly3IgoDOx6dWS5iqj2xUpxXKhqoTFo0Z/dycBM3sAsCjdso6XAewF4
         FHQDxY52fHt3zsKfaDjMMXKkRdUC6YmdFAjeA3ejsNyzmKmDQx9TEWB7D+puS2KdTEr/
         ZSQ9PTONMshIAI4lo3eohuj/eylfYDBGUn4TilIbVnOiOLguPDTiRL7qEu4rgIc8UBZk
         YYgPB6bZ561zJzmZZWW/uF/UTGzqmTWKA293VbLQR+M4K5EiKbfXWmJE/nlE7x4Tv08j
         rIbA==
X-Forwarded-Encrypted: i=1; AKwUvBywHyR+VSW9CK8/WfCt4MgunC46PRAIYTFPJ/TR0A/RHzAkAnD+5wugXP/bP3SmHsIpopCEUMN+7lk=@lists.infradead.org
X-Gm-Message-State: AFq9FYKKWY/mY7i7LzB/MH84FfG6bimFPEJibIkAbqKeuI02UvRzkPWW
	qSUYpNShpYNIWZBXrPiXpDPMMfT/Bw9Pq1tZXx8TT0mrLr5Zph5nT+jWQIbOD1ejjRnkD/DrdQw
	ZT2/rq2jtde3qaJDD9IMzeA4Jf+WqadsOZcliPAcwXqf2QxE8cqd+wAMt35uoeHxdiC/UmbVa2d
	2n
X-Gm-Gg: AYBFou0sQlxrgWe90GkbWM+LCvKdIRo8Luf7P8OJ18c/d62q1sLbjlu90q9Y9+wTD7P
	UKEZA24M9hZht1TcpV1sj/QDP3vynT1KBmuTR0pmoFjqRwGh7XFQsl6xsl1zi231zql8PT+hkhy
	JSdesxjMtSShp+YgX+2PEg9vgXs6dIRf3O5En5PEfasgIoNRSvi6j3L/I7xopPCh39QuukkMO28
	uF7WEDIPalvL3sQfXa1S+EI64UIQy+ke2tCVv/W2fNk9RAYOxeVXbuR4TNJ+MFVbtw5RQGMU1wf
	vZfTkOMyEloTvgQzkxW/oe1y23CvsT0KCDAQU5jmFb0kUeXvoOQhj1oy6Sdr6qxEyUxgWapKik7
	3O9WdU3eFtjpPPuX6xQ61LTg2xZg=
X-Received: by 2002:a05:7300:80c6:b0:351:78a5:d0b5 with SMTP id 5a478bee46e88-3537deccadfmr18827477eec.3.1791811966888;
        Mon, 12 Oct 2026 06:32:46 -0700 (PDT)
X-Received: by 2002:a05:7300:80c6:b0:351:78a5:d0b5 with SMTP id 5a478bee46e88-3537deccadfmr18827397eec.3.1791811966021;
        Mon, 12 Oct 2026 06:32:46 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:32:45 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:11 +0530
Subject: [PATCH v2 01/13] dt-bindings: phy: qcom,edp-phy: Add DP PHY
 compatible for Nord
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-1-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
In-Reply-To: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=1293;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=GiBsZdkB5tHmSr9H8+rZ9GhQGrutXqFsjreZo5qOWtM=;
 b=2jqbWGPiUAdhEyigTemYqx2Mb/1LyGB9Ffl9QJSWT2YL0+kTzRvkvtCImVXPlEp9PW2I+kVrB
 oZPceZ9ki6aCBZT19uqSdq/JvEF5pIa9NU58HRL2f10qbkuIf/jVGpm
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: 1EDT2ioYJhYhonF494WCx-QsHk0X9XFr
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX0tL9dphj+oFR
 QdlQWeR3JeToluGQseR5BenAeb7vVxIeAA3RDJoLWSBLQ1b23KvxqND2/FlY/T4unzLwk4IZcj1
 bAvLyAdkyaqNx/5motilhjbyn4/We5g=
X-Proofpoint-ORIG-GUID: 1EDT2ioYJhYhonF494WCx-QsHk0X9XFr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX+dySnbO5FWJ7
 hwZ+6a81pQcP7R8TZBUB3oWUIKSn2K+dlFK7RxOmFS0QCGrvk6kXnB1Litwu9pKhhlhErntmzhJ
 soQEgyiNjdHNMUrSb8Mwn/EoCadepq7T6w6oyunUbuY0rBdXTVgojRfGfiKRaIIMqwb/qUm/bPu
 7ei8zkJ1a0OvkuINRLN9IBBlV4TVXk4uwJlvl2A7F/tngKeoXqDdnrX252X/qC4igJLc7BPyTll
 d/PKrs1Q9GBmvYDKtHZ/u6uiO/OGGl33q4iNR73o2SNpQPtx9B3IKXJrL0C4vEVxVYL1ywbne6f
 qqS6dfCEzARgnxjLUkIGZKODgskEa0ShCJZOeSn8qH+xNHvBzZ8ZbtatEYhnbXZJzU7U6cfNLVR
 CLbD7CElnRfN1Vjv0mTIqmUgmyvaM3KwDAu8YOBouf37c0T1h/4W1Ifia+DPpYGKWKuA5/6Acb2
 x3sOBuXApam7Hgw7z1g==
X-Authority-Analysis: v=2.4 cv=PbhqFShd c=1 sm=1 tr=0 ts=6acce17f cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=kfPMoZk3nD7OVdbVor8A:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063248_401140_87E30BE8 
X-CRM114-Status: GOOD (  10.61  )
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

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Nord relocates several PHY/QSERDES registers relative to existing
SoCs, so it cannot reuse an existing compatible. Add qcom,nord-dp-phy
to the compatible list. Nord also needs a dedicated ref clock besides
aux and cfg_ahb, so add it to the allOf condition that requires
three clocks (aux, cfg_ahb, ref).

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 0bf8bf4f66ac..0ff07ddcb76f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -19,6 +19,7 @@ properties:
     oneOf:
       - enum:
           - qcom,glymur-dp-phy
+          - qcom,nord-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -74,6 +75,7 @@ allOf:
         compatible:
           enum:
             - qcom,glymur-dp-phy
+            - qcom,nord-dp-phy
             - qcom,sa8775p-edp-phy
             - qcom,x1e80100-dp-phy
     then:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
