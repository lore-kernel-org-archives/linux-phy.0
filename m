Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C496082BD0
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 21:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ouju1lef;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QuEa/dm7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TXY4vXab
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=l5MHdD8uJlxHt5MSVoPW/FmCGbnEAGZ7bWaO1dYNS5s=; b=ouju1lefZXUip1vE9KR+VTerim
	C1t814eNhUzNnAotGjGsMIhJluhZkGpXuU1CjUiN/XqjTKzRHUBwlofc3ftowyrUUnIOQRes13Flw
	h7Q43xcSFYnXRqRaHv9oQObfSZR9VyW9j/j55ubCkCCDZDdEONBn2cWgYKUlLdCg/DexI9+iGqTOe
	zwHNK8PaeMZ6JrxOK/ZM2nx3Isz1dlxaLcdSNj1lEof8CmkSmdwDbn+g8trt/gX3SRZS6/NLjxsuC
	qr8RMe4dZedgkhNqf+W+UqPkadBbMpzYd72IiX8obwY33cuRZ2Yll4bwlddfcPndaxciDGO25R6ZC
	pMUw45gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMFv-00000003kdW-2sno;
	Tue, 03 Nov 2026 21:41:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMFh-00000003kUA-0FAa
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 21:41:22 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3LKpR82395537
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 21:41:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=FBZe0kZye2FXhpOkWuZpIAh05njeUm5k9vL
	sl92K79M=; b=QuEa/dm7P5SVoukhhECuZxEztHcz1PtGiUEOvQWJz8s8Z4B3D8i
	TjSdaLDvK1iDJrOM0wdQ4Lcx6JeL/qqYtyDdopwrX1jw5o3gBM8GrjSw48SQ/Qd/
	oaRstve1u3THBK1yfMYK3PwkRyLXzGIful4xI1MF5tfOy1IUCtnalgstYRVewUKA
	B1Ls/7ji7bFM1Pek5i2QixfjGlZpZarA8hLBFqyWWx/M9g9SayTLASRs7tuweym1
	1YoYoW4Yw8ts1faneLP7TdsvMUW2zTX5NoiwEemesekJ4xXDRawGOuRyNuEVFiK9
	mmVCl8sOR7ZuTEhntwn6VJg4MiRY03DVAmA==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqhyd1kqu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 21:41:08 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1acbaf81bebso106116c88.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 13:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793742068; x=1794346868; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=FBZe0kZye2FXhpOkWuZpIAh05njeUm5k9vLsl92K79M=;
        b=TXY4vXab0YSLQndX0LTzbobWELE1kkHFMB783Rai8axhSbd26VJ6l30DdtPpNt5NG3
         9k0CGPkUpM141r1I+bB3gq5AxurHsKHoBOc5CQ+bh6omZ22BaQsl6gjIAv14BLwoqApQ
         +Xn92Ztxg8FmE2i8PgIoHS9Uq0CqL0LQfGQGtiaYZtwY3H8/+zmAvuMEdNSdymMF+7pt
         RJlG881/CnzWfd5aSiq5Z9LcCw/TS2s5CpwfEoMIUmoYmmwcszTItnY1m+oNEjCGwYGS
         LIybdYmxlbwkrkIQYVhJS9WCb2XAzzoOLCR7x8nH/FrljB4BlsaFlpvH6tEDZmQaFoD9
         2kgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793742068; x=1794346868;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FBZe0kZye2FXhpOkWuZpIAh05njeUm5k9vLsl92K79M=;
        b=Z3UQa21V8Xj3xU/O9JzcZz4P8duiS/8p7pv1KqJfnzVoFSwL8K4dhCPb2efvnKc5a+
         /dWPyj/oQ+ags65R2xuSafC1mwS3JADoI6vtDBT/n9JjTqpmCz/t991Gx/3v8aPAViDk
         2AfJuFBTeKXku3N0366aeSs9OrJB4P0SqOxiOw/JhTp5Hzs5pwzAd6xPaTZcD7KC3rqk
         d8IaX7qD0Al9DoxCuooRvFqklIdyTqiuZDDYnRI4P+eSJb2Zf8ghiOrvHUU78/JBUIoW
         WP/S0ZYKTgJHXBCOdAFtXXLu3qKkulhxRNUten8E6AadI/15PQCDOAvlFPN11dY9O8cK
         FnHw==
X-Forwarded-Encrypted: i=1; AKwUvByS6KZL0TPL0hynppVr1yNfTN03UOWQ18RH/8RAPDEc7y8KNejoU8+Zk9lfYr21pkhLh1JINmi//5o=@lists.infradead.org
X-Gm-Message-State: APuU4Z+vNjGnJGD2DnxqZi638IsA8b+h5/MMIipXjY2YFXQyiqvENaC0
	t+22rptwezH6tyRcxQ5CLjffJcfieMSBxCmMwhbx4XKPei/9D0gKN0eRnnz990ZP1EiTou8rPyB
	BN7Pvjkh5dVOiILeb3Ciw4HfW+qqCuvbeLJB4B/IF9O4fOnAQZXZTK9PHK19oa4HolNLd
X-Gm-Gg: AYBFou06ANIHBBaEnqiJg5q3iLtW1wFmen7FHamDtEiuMRCPySSsQXc6v6ZIH+GrxYg
	3hefOReGAGCZScxodv8fS6e1ggeaMW5DQNhKJYDERZ2HR5IJKC2+9UTz8Q68p57llOkVGr1OObX
	xlfE1b/wmo4Vhgzq5Okj63Xtu2nWdMSiKfYq6oOM7LW1cKXO9ZL7XRCziq9Y0Rt0MIAaUf/nJBw
	f+VWtwzIYxWIVM7X5jgWt6GaWlWwayY2RJoe1JBflG+XdiOThqwdKWJ+9qVC0Z9zikgzRqRlxjS
	RQYYLkuMbc7Orbp3BLP4mNDSAe5RgEpm40VV7BwxOBAX6duU3msvqlJ0Z39ZpUPKtaAkqEtcTCk
	iXgE3vAFZL62uACm6c+JqluY2iyISLDVLwmLot6EP4OwGGzTqYVSjGGEFJKwRmJRGx55M6nW1Oy
	U/QzJO0K/iqKLR92MRcfvtsZfFxEo=
X-Received: by 2002:a05:701b:2302:b0:1ae:e7c4:9a15 with SMTP id a92af1059eb24-1aee7c49a44mr14830783c88.3.1793742067474;
        Tue, 03 Nov 2026 13:41:07 -0800 (PST)
X-Received: by 2002:a05:701b:2302:b0:1ae:e7c4:9a15 with SMTP id a92af1059eb24-1aee7c49a44mr14830738c88.3.1793742066789;
        Tue, 03 Nov 2026 13:41:06 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c1c272sm1537440c88.8.2026.11.03.13.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 13:41:06 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] phy: qcom-mipi-csi2: Add D-PHY support for sa8775p, qcs8300 and sc7280
Date: Tue,  3 Nov 2026 13:41:00 -0800
Message-Id: <20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=bp/Zl0ai c=1 sm=1 tr=0 ts=6aea54f4 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=d2CT3yyNdH9avgRve_MA:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: X443Wa_ne7veaFnx5vtswPY1MJ9nbXYP
X-Proofpoint-ORIG-GUID: X443Wa_ne7veaFnx5vtswPY1MJ9nbXYP
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA4NiBTYWx0ZWRfX4Yeu+g8aFMDL
 VqBz+v9hmJ9zTR1Jcw9pRWJrorhyNfF6Yc/vF5o/bQd4kRMbX4A6JlE2Hrm8N6NhGbQ/SBTWJWV
 AA4bmznV+PAghmmAvntDUZ9acyBMsQs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA4NiBTYWx0ZWRfX9qNRcrlY92rb
 PTX9fMsSdhxiTufvsDL2oZQQ0BHO3+KuB999if9e6LfWb6Z+a60VymQy06dwM2ukQ4Rb3+5ZsFm
 m1215Z5wRH04UYo0Y0b+d/XqmoKSLKQlmL3rTV5MZdEr0qdQiYtGmCWI/P1RM/+jag5H//iOTz7
 JAWJ2p6eD6x2kJXp6IyaU/wCd9fUVp4bQSGFqKXxuhqIYG2ycJxUfiuUwVo7ZbT4rPbR5rPdCE+
 +cF0CgZofRqojCQ+OwEuMJmdEeKXHHfWZxa7BBn6YihzfYcw6mdDw4jyxvy105n/oi6Mkb9tp+7
 8kmpP1h3lsvTZYhJUqY7BkAtEgBl3HqMo2Hlnjr41iZEzqtUaEHL6QVB8J5uv9z+XZQPOE63Ym1
 aYxiCORfKthhGhsfysPxgx0zZrNfUYOrKnU91s5GAwIE2GSwFSo7jHJF23NwW+kx7UIw4XDhXBs
 WUbObaiB98KKC1AICYw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_05,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 malwarescore=0
 adultscore=0 spamscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_134109_112317_D2E73BCF 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series extends the generic Qualcomm MIPI CSI2 PHY driver
(drivers/phy/qualcomm/phy-qcom-mipi-csi2-*) with three additional
CSIPHY variants: SA8775P, QCS8300 and SC7280. The driver currently
only supports x1e80100; these SoCs let CAMSS consume the CSIPHY through
the common PHY framework instead of the CSIPHY logic embedded in the
legacy in-tree CAMSS driver.

QCS8300 shares the same CSIPHY D-PHY hardware as SA8775P, so it does
not need its own of_device_id entry: the qcom,csi2-phy.yaml binding
declares "qcom,sa8775p-csi2-phy" as QCS8300's fallback compatible, and
QCS8300 CSIPHY nodes bind through patch 4's existing
"qcom,sa8775p-csi2-phy" match entry.

Tested on sa8775p, qcs8300 and sc7280.

Anusha Arun Nandi (5):
  dt-bindings: phy: qcom: Add common qcom,csi2-phy
  phy: qcom-mipi-csi2: Make timer and OPP clock names configurable
  phy: qcom-mipi-csi2: Make OPP table optional
  phy: qcom-mipi-csi2: Add sa8775p D-PHY support
  phy: qcom-mipi-csi2: Add sc7280 D-PHY provider

 .../bindings/phy/qcom,csi2-phy.yaml           | 176 +++++++++++++
 .../qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c    | 233 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    |  76 +++---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h     |   5 +
 4 files changed, 455 insertions(+), 35 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml
--
Best regards,
-- 
Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
