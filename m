Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61508CA5FFE
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 05:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGCp8W3fLGGy4470okhMHhIt29ptA3xNhao8PpeAORE=; b=mxCQep88fVfTB+
	M9qdj5AJkj7OVTylOFkYNTw4H/Sh2+u0+N6LkVB/XDLgxgyEnY4iqd3kAT4HfZSzvtNa4Vd+q3YK4
	1O3+vK7tav3O7cprLZRiwvVIJN2RBTSTQOsF4bLvlSxYoeHP4b6f6VjvZA6o590OfdhQRqcMLUWST
	zqybKqGHcUcs0xIg/O+a/Slpkzx40rtHpm66aC9W6EjfskP4i5TDQ1Bxg+A7eYf9ekSAAVM4eS0ES
	aXlbvsyvFQsbjZ2lF7+Wz594khBSCKrTUGoBFchmzsh34JbV8d+XrEG/wGAHHjvSdAhXzRfY77fg6
	lrx/At89Qzpl13T2ieyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxkO-000000004H8-07ps;
	Tue, 06 Oct 2026 05:29:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxkL-000000004GP-2ATC
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 05:29:50 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6963AVct093773
	for <linux-phy@lists.infradead.org>; Tue, 6 Oct 2026 05:29:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y6PDhPtXFIAM/ccyT8/MEF2gGuCNuVMLTbOdYMac8XU=; b=IggwAbbWmNdtGWOt
	NZC1t16nsCCoDYvnR8PWijwHWTARmJZ+I0kKybQ+YJCfNg1nSkJxG82NM6NlUsKz
	/5XlUuoojCMkS38u0RPhGQOLVPGDdN9dfVtnf7J1eqOG2HzEl9NA1jesG1giI7zo
	4ZocwQoE+kURRbfyE7NFOaAKEEXPUKKp6eRVTCaZoskU/DFehwxGMwTEIJef2gk3
	KizFKkyAj+qnlcu7LqARfzlnUydr7CuGjlS7IePVT24pA+8ngb61nlgPXFwBke6T
	SDxovIc3xEaHOiplc7CKH79NheqISOdu22BNHhFgkdRLSgOGWFSMLdq1X4KE8EuH
	V8cRfQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h49tvursw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 05:29:48 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-33713e5e6daso2901138eec.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 22:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791264587; x=1791869387; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=y6PDhPtXFIAM/ccyT8/MEF2gGuCNuVMLTbOdYMac8XU=;
        b=MXLmdTwqTPdDqWJXOGy5X9tFtXnkf+1WaB0E6Cony6x15uT+FMXC9R5A3HzUqQs5qA
         U/R4DxIEOkqXpD6mCbUlSkdkQzUkDqcML8Htfa2sirP17TNVF/MLb7NTuyp6G7D0/S4N
         yflw6dEzgMnXQXIwpRjoFLA9FFZvoxQItIM478eBdujdJnMmxhIPWkfxIhZ2sSoUQa4O
         CVLoaL9G3LP11rpini8bQNkaqUPLbErbRWFSZUNj/qpLK4LSgYy8Qd73X2N8qPvPKBr/
         VsvJveYrpx+63/qv3D2gkrqoFK0Qk258vvzcP87vHybBzhtUUHQM9Y+vxw2Ncz7++Av8
         oYnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791264587; x=1791869387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y6PDhPtXFIAM/ccyT8/MEF2gGuCNuVMLTbOdYMac8XU=;
        b=RzjnqynreJLTGt2MPafVFvlQR5oufOy2B0/Z6Ge7Ucr1H5ZFaRcCYBgrj3spgx+/Z8
         mG6+9hbJ1hhKATR2QPeYQoNpXWqjVXbKIh4tUKC8JC6DKWqEbGKYHkBB4gzmkMbbvmqG
         DsTa1wiGOI2Njivecd9e1z009fGdpPLhA09RzByULaTW+Cf0z8IFN1Z18zzkSNFZCh0V
         Dcb85q0qqvShorq5+ku31bGFCAA4CVCGytC61csoCsYUC8b+K9mDo/j6BmUDbdiu7Dce
         gwa+WtIQyXyk+Go9Faq9kB6aonP6rmGRtE2s8Cn7kySCdGYMl+9028ELDOBuNutOMMex
         Nzpg==
X-Forwarded-Encrypted: i=1; AKwUvByA/fYNaONdQ1QtyO5NYs6COTgswU/H0Z2Wj3QfOJpsnXpwWXJ6j0moHQHgN48DxFqCnabL39E+LQk=@lists.infradead.org
X-Gm-Message-State: AFuF++mHK0sqxgcLkul0yFL57xuNuyPyODKZEq5KOK5nqKJrvlrsJ9wc
	2DdGYNbRlaArs1mVCLBYQJPxvgzthVqfXk1TgPOPu7pzQg6t0koZS3l69uSgD8sdbsPypDsPRxx
	v17yhE5jaq/T334cW+ceNGU2EaH2vapIji4pvG46m/or3Tvzri1nZFGixQ8MCpip2Tq3LEx5k6a
	UD
X-Gm-Gg: AYBFou2kPBDDXE9uPnZoB+Az1ZQLBRkWzDjvC8ppJvYNIxzq8VPhOKcxcg5lEoCZ82Z
	J5jIeCyTuUP6WlwQu7gw5cB7TBgQG0eId9s72Wsv/fVE6OcAqmu6FJKkgysdszKTqgyW/sDaIwX
	BwCIbEMBrJLfzuoRtup2G5g+8LUYnhUSXloT8G2CVc34mXl0ZmbGzpLs6W0iTr4xff8qlD6JS09
	Z3JyQUghIiDBUY6XrP8Lp4jdeoPtlA5hI+37Vc2Ir8SY9f03/VA2kWDdCW587RNKFI0h34XMApS
	hjsHqN5Nqz9oCggXbkGaQJmpfWtTXrMIklIReL9wWW8bpLb+dw7BK8Pnjqe5Io89oLMiwgWiX7y
	VgMguO081rpxlh1pqvNGTA1CfKx/k0ayCY+bJiVRdKSH0XfW/vjSJbzCtzrufWDFACQBGORqVSg
	gHuh5Idkv07yE4U1C1LyB4+IaR98Us
X-Received: by 2002:a05:7022:1504:b0:156:3684:96d6 with SMTP id a92af1059eb24-15eca924facmr586316c88.27.1791264587418;
        Mon, 05 Oct 2026 22:29:47 -0700 (PDT)
X-Received: by 2002:a05:7022:1504:b0:156:3684:96d6 with SMTP id a92af1059eb24-15eca924facmr586297c88.27.1791264586924;
        Mon, 05 Oct 2026 22:29:46 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-15d85781d49sm4017403c88.16.2026.10.05.22.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 22:29:46 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 06 Oct 2026 10:59:18 +0530
Subject: [PATCH v5 4/6] phy: qcom: snps-femto-v2: Fix order of arguments to
 qcom_snps_hsphy_write_mask
MIME-Version: 1.0
Message-Id: <20261006-phy-v5-4-cbe9330a6449@oss.qualcomm.com>
References: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
In-Reply-To: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=aN9lOr9m c=1 sm=1 tr=0 ts=6ac4874c cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=GpOyvZhAS4UUCrMfQdkA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: bRI96azz_2H14yLUSuNHhvpEzuWUZYz2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfXzljb7jUzkz34
 D9z0QegO6KddPuIVdKFuBFR+vSgstW3rIUPdA4RcqO70V2jaUVLRs5z0UsHVDdgK/MEHqP/Jj4X
 BjzFMfYuvVNZw2r70ppb10u6vaYu5ESpSgpWLC0NFKUO/+hUD1ZAFDYZLKFMEkXGDExCIf8q8NQ
 jx00lQpn/eq9OI7gij0vPdevRI8mYEtxA7nPKzZzbPkRgylY2fBV5Ak0UAbKQdQ2tKD54P5+gev
 7qpNwl7WRvB9AD7aH5F0Iio7VU31vOn+tOyM0Lh/t3E+nfLD2d+rZ2hCxxpuFWT3A81Gntzopr/
 uomwacTTLG80wp/hK0opdk3/0WQ7I3+FqXO1WcoS9afLOdYt55H0e6MpQcLkWZ4+Ke+h/V7QR/5
 V47zHWLq3e3CcCr241y9BUDjjWMsC0XqEB+6up7dt//TG/r2bbNlFTIsogikVdugs6ex8K2j8lj
 A0aBZ4dOPXMToP5qC1Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfX9vLGfTsQhP96
 oo3J/PJjm9BjF2tREcBDS4f/HiGOcJGwK06/HAr8/cuf7caBd1Kvyk/eSoxYsCA0H4OSO91AQNZ
 5lV4txjkWKgG5GBj5FUnYOE2yU1B/To=
X-Proofpoint-ORIG-GUID: bRI96azz_2H14yLUSuNHhvpEzuWUZYz2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-06_01,2026-10-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 phishscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610060021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_222949_734821_756C4F43 
X-CRM114-Status: GOOD (  12.78  )
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

Fix the register bit field mask & value argument order while programming
USB2_PHY_USB_PHY_REFCLK_CTRL in qcom_snps_hsphy_init() and USB2_AUTO_RESUME
in qcom_snps_hsphy_suspend().

Fixes: 51e8114f80d07 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
Fixes: 0d75f508a9d56 ("phy: qcom-snps: Add runtime suspend and resume handlers")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 980ad1fb1e2e..0ead37c0dcfd 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -193,7 +193,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
 		usleep_range(500, 1000);
 		qcom_snps_hsphy_write_mask(hsphy->base,
 					   USB2_PHY_USB_PHY_HS_PHY_CTRL2,
-					   0, USB2_AUTO_RESUME);
+					   USB2_AUTO_RESUME, 0);
 	}
 
 	return 0;
@@ -426,7 +426,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1,
 					PLLBTUNE, PLLBTUNE);
 	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_REFCLK_CTRL,
-					REFCLK_SEL_DEFAULT, REFCLK_SEL_MASK);
+					REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT);
 	qcom_snps_hsphy_write_mask(hsphy->base,
 					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1,
 					VBUSVLDEXTSEL0, VBUSVLDEXTSEL0);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
