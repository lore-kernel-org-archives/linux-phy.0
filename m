Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 103C1CCA490
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gU/PS5/lhiZ64H4U4JhPLsfFjuaLbBeZ0lA3aHFbJCg=; b=NBm855MeU8490x
	wv0oFSdvHrRvxIWYetsNIzzxA8To2nh0MU2fqok3kTsRKTj2vIASduKSfdJTWwkqsyhEI03aABhMI
	Ks/bGCkinew8XbyBa4I5oKuLj/FJdvRmpBofOBYiN+nUVGU7flWFskXia8xsrUzQGsZyoQCWtjg3u
	4d97F5kfGOk6mV2yxZjjSM/RjZVsRVwuKdtaEJIad7AH9p0ipvlxTNdxmmxmPF4wYTylAyv2lOXK/
	rn83PvtbKeHwqOtPOyn5caNjhR+ISDvTzcQgmiTnVk57Bm4m2x9QDM1g7OPc4O5JG7Qdu8m5zESN9
	71wHGIr+JA4pVKswyDPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlh-00000004Dho-2hfK;
	Fri, 16 Oct 2026 23:55:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlb-00000004Dev-1YrW
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 23:55:16 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GNF2qg2782007
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZOY/FRwkyGg
	4a3iE+3qYDSoWchH/xcBkPBpM+YaDOXQ=; b=e7FkmJl5PGKkkeVXy3BFWbkzlXc
	29Hd0SIUT3Yr5EpDDf/FUnFFJGLeGrwQ+tImKWyHAH3TY09RmbaSO5j1PAOSzprI
	/QZY8W+0EJb8YhurcRF9WVnfFa0D3e5uYgsuuqRTX3ErjH37MYyUnChKqrJhJ/DT
	lMBKvf6MJ6R28f0ReXH/R1phY754nptRPAVSRG/WFu6oQ9yBeyQmThtHMhRz6ecY
	FbrYZi2PIS5OfHG0JMNljKW2TzPl5nObNNY1cAAaTPUykES+xhDcE5I5CF9kRJtZ
	S3c54f1Dslux6NKA2fqKTGSSITC6Gp/ad14UMBPv6k7PR21xx5cewdNiATA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbk3v2j4j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:14 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30bcb065bfdso616641eec.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 16:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792194913; x=1792799713; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZOY/FRwkyGg4a3iE+3qYDSoWchH/xcBkPBpM+YaDOXQ=;
        b=IYl/tJnrFDXAW/VSM0qmI1/yf2K+qFYPTnXLgzXdObC1srCDuOQ+kUgfj6vu06E7O9
         +YGk5D7R68Oj3IYmLkhLe+lRQxXhVJ9iracgjGvBZVtuy+q45wFTxgNCQO5OmcKYJp8h
         89ucUcA0i9EuxfaZ4GVmtA9OnX5/ql76CSsmPeLwhh5hAwy53JioZroqvmbUHAKYouah
         CdOLvnRd4uktTvnxZNzzX62eJY8Ra7YsS7DmbINdONhRJC84nYnV72RB5jvW+Iq28ZCH
         ZdkCO1WhOqfcGMnTxrY/QVfV5SX/+rxGz253UmL/Mm2NzjwQRyBm0FjUBsBDBHI7N8bA
         Y4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792194913; x=1792799713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZOY/FRwkyGg4a3iE+3qYDSoWchH/xcBkPBpM+YaDOXQ=;
        b=QZPLjrnIE+Urs8CNeyuKKwRwmzbDp/Ez5JbUWGZNLP3MHmQtGZhFgL/b9NGO9w+/hF
         twNX7mVbn8rzYe0ohIfIIh54dwyk/ei3ZTiN1EyiEerpj03vGyTyzb1N72BdxZcGlOnp
         iuQyRs6yq2mCaanv63WGoIqCXRmKNH46Z1nvsGFgALM/diak9kuyqjnLo8Ewe7RrJh/h
         7A9jl9xrdBwrdxdMj/NyBJr54ubgIT0ULP7OF8RRaC2dhHsW7JJzYqKgF0gD/hqnygZF
         7EfFaOUw98noSa/Vt4SY4YsMbpg6/2VLYYZgurcdtpjMBsn0nv0O+m/CEaFK/2j84kKX
         rvsA==
X-Forwarded-Encrypted: i=1; AKwUvBw849F2WmfKZeflZ6XNyNEsvZGb3ArYxKsUqyJi7dFgQvZJXtAhVhFNw8VVC9Ud/jGnh4s821AGxVs=@lists.infradead.org
X-Gm-Message-State: AFq9FYJMhUwB7w5q+G1XoyHp88nwAQenzzofOrw6Z0N5nUqel/0nFyOU
	CoULSxCQAA3JumUvYsqqzwcdvuKMS/EG15LqAS38beWYJI7ot0uasJwlcgpRBYrFKHv8CRSYxXV
	3GQ0fv4bEy6jPsBsUtWGUl4sWMCfy37g5lHNiWQGgW80YNsiMLRlg57qojW8dkQTElGEt
X-Gm-Gg: AYBFou1kOjGOIKfd33lezl/TLrV9I+Tvw+o/YBUF8jpaV2Le9vuCvgUeCnYQcfPozdP
	RpmiDALMjrBISVepozZoisFDO0ihiyescr56zaDrv0fKC0On1/pnKp12uN8RSyKWolbDMEaDxL6
	GCF10YitHFvPg7+qb8L1GuTPGsPx8J9FcqSRd8fPcNdQbsGxwtw8KSaGpo/XDwKIbyY76brEGqu
	f73KLq0eYsEan3grxGzrIAUY3GVSlS4QaTgYW9C4ImOWFz1FCNdU5P94CX2cWnZOlv5cwdMiyrj
	k/kuG0fyv5eLamvSX07akyMQsEWYZU24gk4/9UONWzpd8C9hZTqwN2Ln61chlfcT1uArW0OvSlB
	cl1y0Npz0jAJvQXYMu7/57b/NXG4iI0eCS68lKVj9Q/i55Y2mW7L36g==
X-Received: by 2002:a05:7022:f90e:b0:151:2e62:fe6e with SMTP id a92af1059eb24-185136cd2ffmr1615214c88.19.1792194912910;
        Fri, 16 Oct 2026 16:55:12 -0700 (PDT)
X-Received: by 2002:a05:7022:f90e:b0:151:2e62:fe6e with SMTP id a92af1059eb24-185136cd2ffmr1615102c88.19.1792194910530;
        Fri, 16 Oct 2026 16:55:10 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-183190aa7bbsm8556183c88.5.2026.10.16.16.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 16:55:09 -0700 (PDT)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] phy: qcom-mipi-csi2: Add qcs8300 CSI2 PHY support
Date: Fri, 16 Oct 2026 16:55:00 -0700
Message-Id: <20261016235502.2274268-6-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 7HvCffdrMqe5T53AQTl5xkimqoSHLLjz
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfXxSJCknqyRPNQ
 BDmkcnm5lHCogiUSUdDiCl9cv4s6txNexXfkXYVxiBaAtFF5NVCDfj0WqK8zIujoiC6JGAO3RC/
 SWac8JTiz3heBtYIMTjMrJm3jX8fCeU=
X-Authority-Analysis: v=2.4 cv=BZdNQbt2 c=1 sm=1 tr=0 ts=6ad2b962 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=sspf3fhusXUOSPWbX3IA:9 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX/yKM+NrR2Kue
 fAdYnkvr99lw60H68GVWoCbT8eaQ1lrzoh5fdS2Kxtz2k8iAHe2iDlRicbuan1d5lDfoq+R4Udb
 Gj5eshTImYskHNys8mp2NfzbmRSXZ/t4Agd1J6TsEzliyOpS0xPMJdvzesL5jYsCO+GX6W1SJGo
 wSMzq6khsb9ImnJKnwJaGctw5v89USXH5qCTe18jmf4ZptwZnJ6n8avm+DrRqnfnwpn73SrvHZs
 bbbp2Dtaajd1P/YYgWITMxiU57MlfE1mtnPdlnWapbPAg10NgsHUferfh/DO3gl+F5bjacrkaeU
 sJJ7VHu2j0MpqVh8QdVijbDvTvL+cVphamcUVOP5WgUO6c16oDdN9Z18OISiFtaA0yTXnemZmtK
 Px8aP4ZNKmCznmwtSRCg+zJRUgcExEecmplnkze72EuW2NFz5Vs2UG1llpJn8fEG4cg9PmZRgvp
 w8YqY0cNMOi9ru3IslQ==
X-Proofpoint-ORIG-GUID: 7HvCffdrMqe5T53AQTl5xkimqoSHLLjz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_04,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_165515_426475_38491DB8 
X-CRM114-Status: GOOD (  13.46  )
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

Bind the new "qcom,qcs8300-csi2-phy" compatible to the existing
sa8775p SoC configuration (mipi_csi2_dphy_sa8775p). QCS8300
and SA8775P share the same CSIPHY: in the legacy in-tree
CAMSS driver (camss-csiphy-3ph-1-0.c) the CAMSS_8300 and CAMSS_8775P
cases fall through to the same D-PHY lane_regs_sa8775p[] init sequence
and common_regs_offset (0x800), and camss.c gives both SoCs the same
pd_name = "top" Titan Top GDSC. No new register data or power-domain
wiring is therefore needed; only the compatible string is added.

Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index 821c6a0a916c..cef4a90ca539 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -453,6 +453,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
+	{ .compatible	= "qcom,qcs8300-csi2-phy", .data = &mipi_csi2_dphy_sa8775p },
 	{ .compatible	= "qcom,sa8775p-csi2-phy", .data = &mipi_csi2_dphy_sa8775p },
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
 	{ }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
