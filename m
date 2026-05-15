Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1324FCD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhCAXR6JyPHU8jyM4KgbBb7l6kBtAxSawwepKvWMBE4=; b=b2eiWn8CSSHvgt
	O4rslhhNEdteST5rD68a/bg67RKMWFXZp9oPnAWx0cTV1Oo9HR6d07HAOrIKIQ5n6kHWaG51+b3Tr
	37ekBY383PXjZ0CP3Wdrgd/cgGethA59J91QKdJphc4Me52wkms67dkEFq0fCfAuF9fCyft1UKLFH
	8QH7RLIOtPZaVCq8EIPdMInOC3ZfUDBpGOW0sJ1jGcx1pe6fwGZMmKw3wJHJ9fUXzq13CILGAd11r
	YnAJY1JTJMpBB1xYHbD0oa3Q+f3PXphOWuB2EFvLP32hml4QqobeXl3I9MdjbaS81i0zafpJ+15PO
	lacpSNx6PmZwNFRrFKtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5d-000000085cm-3Kzt;
	Fri, 15 May 2026 10:48:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5b-000000085cB-2L0A
	for linux-phy@bombadil.infradead.org;
	Fri, 15 May 2026 10:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=NXSl9xWJgGrKtTUXE9lPJPSwwg5bTC1u2A0FFxmrhlA=; b=WvOCnr8+TQOSD/E0ccIuRmxPAP
	e3lknDIIyJFbPwG+PO2QnaFSD7LDKO/H0I/t7rta3aTsSI2jEtRCpc47lUQm6oQfW/eVfL5bNqF8V
	KKxUSaOfohwxHApi65mb6De5ftXJDhhWsmdFjqq0reeshhEJHxOlwBtF0u/1O4GRjrS2Lt1zo1sFt
	M+NngQd11pLpB5gNhTpGqwXwdGklTv5PGzBLF30RauB20T1NGT1KhqK+gC9FL/nmExlj0eQSgTFSa
	ybO31svxM1q7aAMM3BEBBi7fbYA1oBsd46sDcUQRQ0P0woVebGgINGruHzYlvIKb16EvjUNh+hODd
	izKSOumg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5X-00000004wfK-19kg
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:48:17 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64F5H3TZ4020769
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:48:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NXSl9xWJgGrKtTUXE9lPJPSwwg5bTC1u2A0FFxmrhlA=; b=h30i5fyL9qxNDuoQ
	Yu9oH+wBgaK5cOsI3Nu+6bVQjvrOUabnhDyUWmok1sofyPKAjozZ/Pg6wkqwwgzy
	RwZlFy+K2I3IpbnpRv5bj2yhFwwHfkcKkHXr9kuYvgIZvp8Vgk+AVMlfVdCWoRKb
	ATWQzCJUiVLSUU8uLCxhJ9yFELBQT6LIVhJiC8D3/8vUGME54GIpf7yDChdSMCoM
	yCzqM3qmiDzPlHUK/pETPxTw48zuZxogQ8jQisVRBmAmCXuHPBURsIZRDnXdFxWR
	26mzLvJlNBIwPXGFZOwHLojPckbdVzu5UdJ42b626+asZOC1aAqrms6iBJ8Srzj5
	SBdCLg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5m1rtwt4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:48:13 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2baedd2fd43so57573835ad.1
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 03:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778842093; x=1779446893; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NXSl9xWJgGrKtTUXE9lPJPSwwg5bTC1u2A0FFxmrhlA=;
        b=OOtV9kYUY69LX7VWb78LPo1Q2vJgKP2e+2/ycxBjrPr5C2F5S2QQGKRypsSX0DsrpE
         83qataTBwzm/MurHVzh918FkOKdBScaW2hvGuiP0gXAn3MnLDrDbMndQVV6oVOIK7uo2
         B85ZFgxXlXR80CW8x1XxUIzDmeBjJ2FooRWr353E/cbQm2Xa8ex6wt6vS+XewiGXCR0+
         1H90GcwugZr1YSw2wf3b6HMvxUBRPp5QUmaxHJ067i81T6kEgs6w/ALgFE+qDgjU7sZU
         GNG0nggi72R2C0/QP+BBt2+ulNrwzsNzhVDBSVDPfaYiK+11gLNNXLuKpjt3KMq198GR
         B2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778842093; x=1779446893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NXSl9xWJgGrKtTUXE9lPJPSwwg5bTC1u2A0FFxmrhlA=;
        b=dfdvn4DU+y9V3RV+FM8lTeisgObJc6j1p4I+9u9mFqZYsy37K9KpGya+aEVEBVA1p6
         LxwK8iAkJdc4VAluz4wiBnrONMZb4GtGHjdRWSr5Xhkd0A3gJuJ3dK3e6k94i6Tdv1Ap
         8jS2y2DG9IoKZ+0/JFcCJjYjWXncVBVzg/WOYwxM1JjX5vqI+7a1zwe8Te5rVj7lsMIs
         7Evwc05l/5ifFiaVkZpgpJLUYbhkCQVlDo1/YS/Cddd6e3jGdSzI5/srqk0DnyXxXluu
         URVnoHQQ2zCDgwj6JgjZD/A4XhHToD43C0Ffnq+VbLmSfWQfM0Rn2D1BfoJTGtIfMMbp
         rBQg==
X-Forwarded-Encrypted: i=1; AFNElJ87ip4Z8x0J0SIV2UwYF4SiA/EJKqedXGjqOemsHg/ke+K0kl8Gdd/0JKBFcN/WxryZUZYmznHbQsI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzByEKMs8exfD68L/wv95sS+RdkG3DBi67YCw2KNYCNlAa1S+TU
	P67gd6YQv5v1RxjgPx4b+SMebRTJF6O3P3qctT1aXkX5wfbPheiA7I5En2pexlTUM/tzeu2/bT8
	KIhG+u3hNOnT9Vrx6qn1xSp/cEO0eYhRXUkakBUzG+Sb9CQdaC3xFmWpRZg3e8yZCv706
X-Gm-Gg: Acq92OGP9rwYsA3cfsxrzU2dXJKQzjqtkUZdzC12cADuslnA/YyHPiu0jwCR6juFkMh
	/DgVpVgLjhFLp9fWnEScWoZ91ydp/Ypuo108/uo/bRi+kj9yen+QVIs9QVyz02In66JZk4L1hzH
	xxiuQUkPJJUQ8fdjC+0bPpM2WWYxRqQaaJpzF1phV3VXXXM5OHr/dm8UBTfWFE3lxwHo2ycdEfc
	MOEBaZpbBue/HsJEqtGShpePiffE0SVa58e6MxC8Jcm4JdXy8IPpRJpGQsBVNxy590uQHxmyGmj
	G3WLPSZ4W91lviXIRklbfd7+2611FwC2ypf3Q77yR535kyLXeYco6m4ybGDJ2Qf2UsBc1qKJnyx
	74eW2MpHp8hFe+QVreTNDpI8IxzY68ODtOq6T8l5ce7M5DoC14UtG+WY9ovpHE4vR/aWb4AjeUd
	KiuoZgHAcpdTeeGYJI4VJ61n5mQFQW3xoOWBe6lPKPCryGLvE8Rz0=
X-Received: by 2002:a05:6a20:6a24:b0:39c:241:65a3 with SMTP id adf61e73a8af0-3b22e6668b2mr4159413637.1.1778842092761;
        Fri, 15 May 2026 03:48:12 -0700 (PDT)
X-Received: by 2002:a05:6a20:6a24:b0:39c:241:65a3 with SMTP id adf61e73a8af0-3b22e6668b2mr4159374637.1.1778842092295;
        Fri, 15 May 2026 03:48:12 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c82bb1006fbsm4955221a12.21.2026.05.15.03.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 03:48:11 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 15 May 2026 16:17:46 +0530
Subject: [PATCH 5/5] phy: qcom-qusb2: add QUSB2 support for ipq5210
MIME-Version: 1.0
Message-Id: <20260515-usb2phy-v1-5-5f8338d466bf@oss.qualcomm.com>
References: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
In-Reply-To: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: HPJZ8CmSXR481cRSVYQ3fTOexnuQ4CRX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDEwOSBTYWx0ZWRfX2WXrtKnnhkE/
 D3yCMt0aXEiHGx3q7moau5+AGCUw6owhxqkrsFUGsJMmIGTW7zPAJZoYhE30DOh+mnQjVQfhnw0
 TfDJJeqoaCqPHOKTiIcxBWlNXlbPCekv8/PgWoeUj0dJ+sVfNdqFR3BHdLRcWfWScxGuv26YaOk
 +HVRppr+1bugMv4WaCDRq7XDZ//2e4pmzQFZtNDB1CvKEqNdJhhliwb1sxJUA08D2uOoalumMZ0
 bS7SM4RZWtrkM/ORhWmMwQ/Sb/vhGtP5JsMuFHy4/q18Rb7GXYEkfvXTSMXaBTPSuVjzoxCRyhp
 F63MREItiloyeyFcOSiTXyI6XLnI4L9QgMZrbaxzzl4f0mFNIA4ymj2xom8HNYbUO4+IV0MYNOm
 5t35pX/gLjwck13V2P90llNwCq62ebIr3NgyleYmQfJ+D7qwENVCpZgl7wRWVOSSy2y6kcR8WUF
 fbnwHsJJSbnfxtSgc3g==
X-Proofpoint-ORIG-GUID: HPJZ8CmSXR481cRSVYQ3fTOexnuQ4CRX
X-Authority-Analysis: v=2.4 cv=JPELdcKb c=1 sm=1 tr=0 ts=6a06f9ed cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=YjFiIu3VuMthEzLBwjoA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 spamscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_114816_103949_1795D211 
X-CRM114-Status: GOOD (  11.54  )
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

Add the phy init sequence for the Super Speed ports found
on ipq5210.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index eb93015be841..749106175742 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -929,6 +929,9 @@ static const struct phy_ops qusb2_phy_gen_ops = {
 
 static const struct of_device_id qusb2_phy_of_match_table[] = {
 	{
+		.compatible	= "qcom,ipq5210-qusb2-phy",
+		.data		= &ipq6018_phy_cfg,
+	}, {
 		.compatible	= "qcom,ipq5424-qusb2-phy",
 		.data		= &ipq6018_phy_cfg,
 	}, {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
