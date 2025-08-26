Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9BFACA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 11:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NJ2DLdJtexuJWswhxyGUz7YnLL3S4DnkJKYME4l6UFI=; b=DrYFnJ2mqwp1Db
	Pw7sE9n/ldXuvj1zQCjgOy01Td0yHF96RgwuLP28oXRCd/V7ti38nMcZjwsjsgDby39k7g0h9GvfW
	I9tVcD1fsyUzwdJxYsvJ0xpx/ixVOHZ2OjOMjREzbauPnHuAO+gnQrUVkw0J/y18farShwT2ABAps
	LPGnU83UJ6XruJDBLKSgl4ezhgwsev6eyvReiz19C/ZL8lDhelLAUZd93shLxPepB4gSaPpxaF7dV
	R5AQVQLmZg/j6G50t8Mm+s8SRHp9gvXiKhfw9S5WcjXkEDhoqwD38ise6HVPjcIF/1S/iY+UE9iX7
	Z5k6/sOyvkZmC9GQpoYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqs6m-0000000Bpjd-2IeZ;
	Tue, 26 Aug 2025 11:45:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqrJe-0000000BgNs-3o4i
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 10:54:16 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q8A7Co027740
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 10:54:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=9siQtWl1MwhzgADY9KZJpCqrJPXOzFq6MVL
	FHhgMkmQ=; b=BfvKEqCmFpq8+WUHNP9dfwjrxSmfjpP8EtujzsswfT9MIJmH34L
	iVcJU6YJ0uXNGSHoK8kQGgEaPNYQrlp9vi4X8CxGROKuIG8HtMX0pdeoaLVD8Uhk
	9R0yFtdh01X/NT2LQhDJD3O3zjAdZpUT3OLz+82AsIOfDl7YflJgA/32kD1JOnzz
	OATgHCJabhehK09Z/pFU/RYhSKaETrcN3VKU0zUn00PLYdVvOlKFatuC846ZAxqL
	GmCnKeKgCugMMYL6E0FXTdOBHRbGOXssILVHlP9iqFD34eEqI1ZuFvi5b2aN42xl
	RW7ncQPcGPI+eDNpguIwlzKKppUgVOmpdXg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpetuv6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 10:54:12 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2461907278dso52569715ad.3
        for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 03:54:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756205651; x=1756810451;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9siQtWl1MwhzgADY9KZJpCqrJPXOzFq6MVLFHhgMkmQ=;
        b=hpuovxjyf5X8FEgkYR26H9a4M9NlVian6TwbD88mUhzakL+/mDNrkHCiaDQLwVA+Ui
         +PkXClV89Gy47rpLksbdpFKunjbXfw8YWs5v9sj6/0buyVrpy+dXhbozmwCNMS+bI86X
         9E578OPfgHwvfFJA75E1e9IBWCy0T6Uo1sVXom2bD6MHSaTgNGvnRDYbFNBDFMaAo5yh
         3EQRI6zy1MWPXVaoqQ6czGHPipK0hjzeVIw8mZDcoY/SDc5UJDLkwRDVQpw4jazPFqIs
         ZBQbuJdtPM/Jzikn5Te/0tkm3CeY3dJWZHSsQ4PVI3NE/2dN4RrJsUxeATz4ZmuKZ6Aa
         BaYg==
X-Forwarded-Encrypted: i=1; AJvYcCU0SP7QhyGRkMU1gUbjv9YdjalcWvzzhNRPfKV0ttLPzzt/7YUgViSMBH56Z39wqmLmgUoI+wAlwaw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTa5pCNSeH7iP00TB+4ad/HT7sOkrTPEDSLZnAwsvQ5aVHznFA
	3KdjIlyzyljq0s3j2w5kD7x1zY+0YFe7jVtvjy2DwaB2q71l+E7tSFRCUMZutf3eaR520pqHJLm
	VBSJPP2K9EOeQeF21dZyKJrAfPuyuU4mCTa+h861gT5FCkVHvEa1KWaDRTZ2X+10LxrADdc7gkD
	rV
X-Gm-Gg: ASbGncuYC/cAMGvEFh8tYjV5RrebeLwFSW4uwyVC+W/2dov5Qjo1QXt2SjDbCIZrdoy
	rMcia4O0UXfKGohj2vgtgVU6nrFIdcub3WW8OBJh4imy3lDnCD+mQA485qROXnlDBBkySgk710H
	1+E8d8FTBpaD0hDhQJp9rjnI4t5QZ4nZE5SyfjtgGpuAXnBWYO3Ta4yWdvfI/sYlXIt4f6joC7d
	sP6OHTQwOzQ8u6H49VuCEd5S+iE3Jktr3+u6RsKdGW6ODrSA/PQLuFrxjEbbBvkBep4i/+Us7L1
	zG46cV6nMkefzdl0VxL92OqY1nQgEM266DwTU5NHuceVolLbQ7dGkrpdv/cPjycFY6jE
X-Received: by 2002:a17:902:dad1:b0:240:86b2:aeb6 with SMTP id d9443c01a7336-2462eeabb40mr237650325ad.26.1756205651398;
        Tue, 26 Aug 2025 03:54:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH61LPvg+slhOhBJV7cnFrlMGYe2vTWQvsbBvOIzQ4SQYG7XOswOXn6RSmy6CqhX7Amd41+Og==
X-Received: by 2002:a17:902:dad1:b0:240:86b2:aeb6 with SMTP id d9443c01a7336-2462eeabb40mr237649485ad.26.1756205650218;
        Tue, 26 Aug 2025 03:54:10 -0700 (PDT)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246a4e7f517sm69316285ad.117.2025.08.26.03.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 03:54:09 -0700 (PDT)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: [PATCH] phy: qcom: m31-eusb2: Fix the error log while enabling clock
Date: Tue, 26 Aug 2025 16:22:54 +0530
Message-Id: <20250826105254.3758803-1-prashanth.k@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-GUID: ngSukYA-9ekbpPf_D6O51m1qVOHHP20s
X-Proofpoint-ORIG-GUID: ngSukYA-9ekbpPf_D6O51m1qVOHHP20s
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68ad9254 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=FDOyUFNpIdPerGCltuEA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfXzKQZ1TBQIfpw
 PDTSlzAzYK+9FU+3Rqaq1B6g7vI/Ral7U0df9OAGRQZPF3xzrCnWxCqoLui2hWzEwRrfx9AMzVJ
 ojOfQ2Rjdhi/TH+iM+YoE7TZnvClRS/u4jh7HI2pcBThtzc0wXJ74mvu9Md2uZ34I88LEAw1raM
 F970Fp9DMTzzV95xeRTVef3zPOq4xpkvHzI6nMi5w/U89EmIu8qbIpNbT2tovhWeWs4Jjcr+4w4
 ETB34G1qxPZYl4R/BCM0lX+9jeScdNBZi8AbWlDMmHLI3JASiBgDsLKzMhNzEz7jWGCJvebjqdi
 Ihw0FSFii8oB6hTGcztA9XV0PIkECrkOE3gzjDSX2jOkOTX4cxReklhG27ZYgKZS+1UnHGn4dFq
 n6ILU6Eq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1011 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_035415_071263_1DAD5557 
X-CRM114-Status: GOOD (  12.28  )
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

While enabling clock, we incorrectly log 'ref clk' as 'cfg ahb clk'
Fix this since the devicetree bindings mentions it as ref clock.

Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index bf32572566c4..0a0d2d9fc846 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -196,7 +196,7 @@ static int m31eusb2_phy_init(struct phy *uphy)
 
 	ret = clk_prepare_enable(phy->clk);
 	if (ret) {
-		dev_err(&uphy->dev, "failed to enable cfg ahb clock, %d\n", ret);
+		dev_err(&uphy->dev, "failed to enable ref clock, %d\n", ret);
 		goto disable_repeater;
 	}
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
