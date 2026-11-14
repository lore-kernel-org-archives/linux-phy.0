Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5D7606A8AE
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=prejxIn4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pqurAJuF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=RX3lC91s
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Vn5lkBuhREU2wkkzGNdYXo6ALJu16EDOp+P7UQNZnFY=; b=prejxIn4941PW4xf5O6k8X98DQ
	p/BL7Qy4leXoNdGXslpi1Lmkdg60mkXs2XVMlBwOU4kn/wn14AFS1Z+eyOFEV+5mK810QWm0ddEcj
	tnhBSRhMAH3UpAAMxkyzP8dSD821oTKys33zaZII94JY0L2Uu/YImCJ0MrGEii0vQ3Iwa7coN/rYC
	hJd/KMWTucmzcHOV0lH5m8K8kEKHluq04kUZi+kR7FNEiJz+kdwvFmtM6Uxm1KxKMhwmtHPqDM1Gu
	IkAmheCe+YfYOpFoE3TMgPBjcGtZ0+LThoJ2e52FK+Z8I56J+WBj5TjGtPIAv6mDoxLFJSzQDdETY
	IhnME/9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxx-0000000Ftp8-3b1T;
	Sat, 14 Nov 2026 11:30:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxv-0000000Ftof-1gFk
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:30:40 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wGnB3716883
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JtnzJyvk1KhH53ox2qEGTYmgQHbNRK/nZXY80+689io=; b=pqurAJuFTeiYXqDV
	PyIQkXvxpjpyOy9IqxV9p6GZJze3lWc3aHDuaHQxtr6RxRNlW8+MsC8+84GCVfkI
	5DaXgM+Cy0efyHNjf8yQdoFNskRnxVVOpvJCc1bvCCHlI/Rt+VsVPgeo7BKsjwb3
	XKEsbr/3xFQVB4ss74w2lVoxko9PIDGVoJ0wBJgHN5CsYSN09dXpIR5RI9Bq8bLt
	4omvte/5mvOkWdRsBKB6pETjJ98KpvnMLwqxG7JvNFJRPSpboiZTEasOfTuoSsq4
	YEmjCDkyHFLTPpEgvsL695fjCrtpuOVpyZdEXersqS6/EJ7MbdHvaK64FxMRYRRT
	lXZvcQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhk20m11-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:38 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91f184f3334so38327106d6.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655838; x=1795260638; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JtnzJyvk1KhH53ox2qEGTYmgQHbNRK/nZXY80+689io=;
        b=RX3lC91svidk/4G9sLeJbdY7iX8eO+9FbAblnuCcr+NUZIuoIr7h9w8Y03mYh9nl0j
         CgkC4vFhzB3WjWKXBO8Wlw8Dvb3pKAbO4oZRWOWMshuytaYycAaCdBDOfElHxjwQoRax
         OGa4a1Gx9x2awKud/jBdhhNo6CPjbjnPpU53pUuaircjNydOFhmuHYGJFTJBPtix1PvM
         uVHqgYdOklcrlzV0wqUaPkFTdkehGnW+1sh0iMsk5jUFlo50ZICbDnxM6vn/AbiWijK2
         vo6xMQdsfvKGtklNxKLp+mkspZ4E9roZy1pM35Ae85aH4+zxOuU1R+xz/m2mkamIVArg
         rShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655838; x=1795260638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JtnzJyvk1KhH53ox2qEGTYmgQHbNRK/nZXY80+689io=;
        b=XWBotX5U0kdalmeBEYXV0r6s4UJpMA5XiM0TskWyhaLF11T+b6io+B7251U/tBt6lz
         qXmDyCBL84D5CrDc172ssUj5k9drQA0Y1FDE/pqUgIQL4Y4N2I9IWSVTvSneHjtHZoml
         Bnhbn+tpm8mEmKKGn/2/HMwYOxvrXx2pOrDlCpTQFmRQ9O5R5pc/d8j1TVcO6ugBRuam
         fekvUUKZxwK3qb9Jqu1TLqMpuNxWmGPrc3XsOshCRHR0NNUWqbxAXsqJRtx4/dalFAKC
         6NRByfgEalOu5LjOVnkXmnA9rZB6ySeO4bPegOv4//HoPsZJX7Wg0bSkpzX2jM7Fn+9w
         xSww==
X-Gm-Message-State: APuU4Z+4cPja+mPVKKBLmH6YoNoI3kouaAbitl8LIom9MthsT3HN2pNP
	P2Ob0ZC6PZcQbdCxZcmgI8s7/7uOYbVvXIeqQijWwfNFkLzJkRsHma1kT34mkGlRvDWGkemefAr
	YMTKKt7MN6GlnO/zbqeRH6benA22VF6C2pIul1q0smTOTdcCVGIxh38wylqbeyxf+gwn5
X-Gm-Gg: AYBFou1vJCj9Q4/5Nf8ZVM/fCK1j7a3CvQRgAVihcYXr67swVFnlJr8JqcrFs2bijZz
	S5LBHNBzwZHgY82jRX2W3dopBd9vLSztG0HVMIY+A3522fvw+zlBlqfal6/tatZbJzlla+WQ791
	0pY6vC5Tq6wdYDODWfEQ0UmLERU4p8ERoMW/vK2us4B2Np6na10UgSwCjfK/I48Xr7Aq9bgC6H5
	BmzrxAlrmSTeBapmwqzrECAOAYix7nuObx2NjxP7ZU2PIYrThP3LKtUWMYWz3od55nxGoZigMCE
	u8fYi4V8G6Eq6X4vWuFZMLk68rVrm4HIqj01uEVB2UbiNZ9m0z9NK5l4LiYKDjxj7oUKZXO2f4y
	zTyEBgykG0tp4SimoIMNIFDdQXowKaCJe3HDLXsfP2UaTn4yeZf5KFJ53kQLAk7be6NZ+KJ0PEz
	/bnli6KccQuiQtTfX9YUSvNN3BMgXqVD5XsA7NlzQl
X-Received: by 2002:a0c:f00e:0:b0:91f:119c:49e7 with SMTP id 6a1803df08f44-91f242183a5mr64201176d6.33.1794655837846;
        Sat, 14 Nov 2026 03:30:37 -0800 (PST)
X-Received: by 2002:a0c:f00e:0:b0:91f:119c:49e7 with SMTP id 6a1803df08f44-91f242183a5mr64200736d6.33.1794655837376;
        Sat, 14 Nov 2026 03:30:37 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:30:36 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:23 +0800
Subject: [PATCH v7 06/23] phy: qcom-mipi-csi2: Add SM8750 support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-6-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=1231;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=WftKjWMmd6ufkhmpBXP+kU2zClT4Pa5uPn8ECol2Zvc=;
 b=1hq3oXdyhFU9AflJEQbTquWWh8o+HWgH0+JcuLjn6dZoVnqZtl2X29Hz4G832z78mH6JrsmOn
 5bOzwxRADg0DavMNQ2fCQoeoL6og74SBbUdPXifKfoxZgdufnUPeutY
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-ORIG-GUID: i88AaWk0ERYOK_pgilowTrlV-VvnRUNC
X-Authority-Analysis: v=2.4 cv=QanzLcbv c=1 sm=1 tr=0 ts=6af8465e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=ccvM8GEhhlxfBWNg_LwA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXx23cfA0A7qZT
 Rm+ebtIEqPy+bsyXltht0IquACJEhWpw0+YEgqaaBYeb0QaRM+xoi4wAwhyJR/XxeuAMzCo1ZTH
 JOG+ZW41SUzwVg9eT/ZGIAGInfiSpteaj91EzfGp1Z/XByk7Zuu3/WG2uhXCTVlVjsyOKml390v
 3MIQ5ZtK1+wu0i/sIRCiWz9jJiqbHxWEF/LXBHCxWiTTfOOKbvY1HDdcPzyTYRqAY4tEZXm1SDW
 RoL17g54KpvIlQ/nrgkUkrDRA0/M1X11rS943OLeEskWLNWnsBROzGkV63/mnV7c3WRc+coWVJA
 iUBOnugx8v6NJwcd5O/Vj7+T4c5025l5znCrB8wNWETR1WulcHHePfy/TvdsOKtn66xNx5Dd4nQ
 qXq6cGm5Uh3oamh11kijhyiHiZ8aPl2OKc2vplGEQIX5Zg7ImDItDAwfedbbI7g9e8AvUCpAv6k
 2Cci9tHLXBJ2tg4euoQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXxRfJKKQBj90i
 UOpp7lAndZK9y61bGKBuCZYehuPQEH97JnN+epKggX2HoUXuNPzJOXO322IJiTVcaE1sWkIKyqc
 vt4f61cmFU/bu6Yid8LZpXe+1flzhfE=
X-Proofpoint-GUID: i88AaWk0ERYOK_pgilowTrlV-VvnRUNC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033039_580797_FC3B3780 
X-CRM114-Status: GOOD (  13.14  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add the SM8750 CSI2 DPHY compatible to the match table, using the 3nm
DPHY configuration.

The SM8750 CSIPHY nodes only carry "qcom,sm8750-csi2-phy" with no
fallback compatible, so without this entry no driver matches them and
the PHYs stay unbound.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index 165e3d026872db85e54a99c5dd25ca68a1a4e450..a672bf318487b16aacd1ecf165554cde3f38e292 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -444,6 +444,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
 	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
+	{ .compatible	= "qcom,sm8750-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
 	{ }
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
