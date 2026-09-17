Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D976FC982CF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 12:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNFXLNpNM3AdT2wVZJsUG9C/F7hQbWWAlO20xAWvjrM=; b=phVx2ujzkfzBGe
	261yhr0n2qnFWabG6E2O7DpZsN1XCpvkcd+pNtHKqAWnglafllJ2DtN39x1jACeu/4HuMfPK1vhfo
	wkklWUD2x64t27G2QBcZFkDQPqelfJr9jXDv5GXWU6wCfSd7UYMDbwBEkSIbEWhv83g3XczPDBVE/
	ess6t0GsAbI07K5tmaWbgn/NBsQHw6Px+lIaHsw65+UsOCotAk1D6dqR1egsYMJViTL8nsPul+ypQ
	UuMhtZVTjA2SEZE4O07dQ2R+sLXZaRpLYYqjlGwlpvh63C1iMqHP5wisYoid1RejcSlW8RxuXpuub
	GFiQTLqSuoLjNy5HpmAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Asc-0000000BFf7-2GRn;
	Thu, 17 Sep 2026 12:06:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Asa-0000000BFeZ-15Zr
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 12:06:17 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68H9Zvjc1390241
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 12:06:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nP3wcx2p80nx+Tohacyx3IYJwpEKwRThxmKFCg9vGIo=; b=U7Uwg5eFG/pmFsnM
	xjn7dPDCxwjwcnMVZJ9pEha6boZUgOzeEhD0h0Jw+xbO+nHih2NI6K+0bwLOoREq
	AoIzbhQHSD+uRSNkJga4b3wv71i5fHxey2c2sr1/nF4Wh0KSFK1omFIkTI3FurZn
	oUsA2iw08xh80L1FV8YVvQ2azYF88oexBO6K9l/yZjBb90O0+7uLGGm5PJlswt5C
	LXxD5ghUGbpYy7NvyK5KAXltBWQVND9V7GdPiWfH6O/aohR69wQKIjkXsYLtMcYq
	iBkUKHrH5QXfU9M2+29tgnp2r5mAQsaVkAy+ozJr8NOxqI3sWsI72Vle4eTrOl6l
	iqCjdg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqy2d4978-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 12:06:15 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-38ea32e57e2so1694068a91.1
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 05:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789646775; x=1790251575; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nP3wcx2p80nx+Tohacyx3IYJwpEKwRThxmKFCg9vGIo=;
        b=cHKy7eDemufnolJ89npoJENJj3VJLpszP3X69WOPGnDyDKWk7wdoqTL1b9QtTS9ITO
         Xb/npqa5lGfmBIbtbErrn2pPD3qp+QWpM0QuZjAZLWKsNyEJQ/qu+8Z1FD81AV6+TR6f
         haufqo0J2d0q+MpSh0Axw40pHTePmFsjZevHx6c/d2Uw7xK3P28scx8LynOFNNgv894y
         O2XQXZKGqLPQPs8q1vpjSIV2+evE9QcvxoGxvT+8ls/vm4V+B/XOpm4nRKUgw6Y8paok
         +nQjbu2Pg7FlwA50zKZcbj2jbW83hoW4zDHjd3TIyX6Y5ZhtfB1QROX5YSOkrVaoq9Ws
         gQkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789646775; x=1790251575;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nP3wcx2p80nx+Tohacyx3IYJwpEKwRThxmKFCg9vGIo=;
        b=ZCCJRSFO51GCh6ybAAzpfTFthS/hAniPZOTQfH4RywsDZSjT/28K73ShTzpS5NuQxL
         kjENFDs3pFmki8+OVyK5XYSldSZhWgW34AZK5uJEXkyWRhlC6Dai5m7EYPa231KIdpPG
         yZL5am+Hs/VdhtoV0xE36F/WpwQ9h/5Ai7Vb/TJbSIpVg7Cas0yVYDmXZ1bOkzveJJDi
         EvGqEERWEFLUCCb/Mim2OY3cFprW+kb1KgmT8i9i/OP2rOoL6GujWsBPSueXyS4whtkD
         1ZBLB26e2xfUZ0i5Vcp2uMMrMoPccIsa2/5AZbuDAVmEashZ4GrbJzJqk3cs0aJ6UDbv
         NeLw==
X-Forwarded-Encrypted: i=1; AKwUvBweHQA+Rx2AqNyjsLOet3l0nm4L9a2vrT1Y5Dpi9euMoPROHo/y9bWvVeco6RCTB1kW3ZtZyvVD9Js=@lists.infradead.org
X-Gm-Message-State: AFuF++k818YB25LBQeTUG3oczUIW8JHuCzRMvgaIRUnBoWJkxROxHoO8
	ynkUDojLiRvyvdBanzZ102h/htMW3RnXHWDuevkRpUK52/tZ6ml+Qdo2Hd4uvTrCE3uTy8H0EgE
	vz/porGUEYyP4aEmYdelolw2AyQbcgOw9ejcbboZYvwjz7vr4Mb+QozwiirvJdkPJlhPC1O4maM
	BR
X-Gm-Gg: AYBFou3VtzYqD1XsaiH7HsWM3MKyEWTXvS6FT0qnmUsCvNwsYboUl9Z5Q0G0x2386si
	rAi5FkrH3B34XsoE7i504kXww/94xVnCz2Cv/OsGxIRnVDCqGulZS9aUhCLflfRQzj4JYxMt/7C
	s2MZYZXnA7bKfe2EwKk0b7fhhpAcmw824FSEYOD9ZnL2p8j89mGw9y+sxXYcGSEuWY0Emc9wxym
	ZyTqtNokK9BSDamMHOzPedE3HawSkGbT2hrd1TN83/4TeHwcsRM0+os2vJO5gCHSIeDutqczOMj
	80fDBo3eL/Lw5O0c9Hv+wgAJsiwP5eIT1RI7vB9+W40U6OFmPt0huw0Wl7Rnqav8isQx+j4J6X8
	KtEXkz1YEdcOIcgrFdn3OmxvOcjaKaQ==
X-Received: by 2002:a17:90b:4e88:b0:398:cb56:e92 with SMTP id 98e67ed59e1d1-39e1e30ba45mr15795506a91.11.1789646774862;
        Thu, 17 Sep 2026 05:06:14 -0700 (PDT)
X-Received: by 2002:a17:90b:4e88:b0:398:cb56:e92 with SMTP id 98e67ed59e1d1-39e1e30ba45mr15795404a91.11.1789646774273;
        Thu, 17 Sep 2026 05:06:14 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e35d9869csm5007612a91.4.2026.09.17.05.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 05:06:13 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Thu, 17 Sep 2026 17:35:43 +0530
Subject: [PATCH v3 3/3] media: qcom: camss: Add Glymur compatible
MIME-Version: 1.0
Message-Id: <20260917-glymur_camss-v3-3-1d0e2d47ad2e@oss.qualcomm.com>
References: <20260917-glymur_camss-v3-0-1d0e2d47ad2e@oss.qualcomm.com>
In-Reply-To: <20260917-glymur_camss-v3-0-1d0e2d47ad2e@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789646750; l=1214;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=dRIORkLtErUy8tQv0r5xQE2yHwcn16W9lhrS1ITHzeE=;
 b=nxyrFl9h4+kkxs5v1Hz/1ajWuTIr1Gc8gWV7jz5BGt7loaxka1cQ5RhKwkSGqRpfQ/S++FVgB
 BxTRaBQ3SFkAdZaZdLczev5MWeJ67nyhFZkOh7hCbvax5qVUeDTvpig
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-ORIG-GUID: yTft8i2qadjZtllCGvuzXd5BqQvbW1Tz
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDE2OSBTYWx0ZWRfX/LqqkqhCF1Y5
 OPeebLXfbb5MWKoSCSx0tufttJ7Wt32AItq++GtZyZJoL9zHybuDsCYQSx8S3fSx3MhgwIvEJ9p
 8KpUY+PWk85y4FHSoa0Ye+rwmBbgLb4=
X-Authority-Analysis: v=2.4 cv=HbeB3SE8 c=1 sm=1 tr=0 ts=6aabd7b7 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=xYyVevvQUQiUFKtwU9sA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: yTft8i2qadjZtllCGvuzXd5BqQvbW1Tz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDE2OSBTYWx0ZWRfXw31nxK6j+mQD
 8HISx6RbmzlLTKglvGW5yCN+HfSP9Ra8XfJwaY5DBGVHnyroURo5GFK2GKJw/UgkyKMXYaIQ71l
 g2lBbwjLf9aZWWP+u0bNctapkGuNG/t/W7R2gZX/d4drbnPH0v8znfKHvCcK3hJMnr0yLFI6klf
 LfUahO0NkMA+1JcB/QbMRIUWj+f/rtygBiGPw+PIWmsJmP8CDYlukVLbG0+cgoyK4fDQ0OzbFlF
 KikWxo5K9R3WRjiRH6GjhN2aElMDiRrXTy6Q0SJY0gl2egdE0Zv8sYCY8pmiRCjzJs66hv8XG9G
 53Z3Dukp5FW7Bs7lcdTYT4sC8e5CcaZWwMAfBVx3DuNvGqeGbvPObADd/kAzZYRsvgZrEfHfXQW
 Nb0KBYQd/LdvnAbq8c1fgN1kl0UyGFhrfAMzF9gG5081Nv6DAsQXkFTrycQ4BoVyN1BTcDzunxq
 mx4cj7GmMfbzgnaQIgQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 bulkscore=0 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_050616_307519_0B443603 
X-CRM114-Status: GOOD (  13.73  )
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

Glymur's camera subsystem hardware is a functional subset of X1E80100.
TPG, CSID, VFE, CSID wrapper and ICC resources are shared; Glymur has
three CSIPHY instances versus X1E80100's four.

qcom,x1e80100-camss is not used as a fallback compatible since it is
already claimed by its own binding schema, causing a duplicate
compatible warning in the DT schema checker.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 2123f6388e3d7eafe669efd6b033e22d8eb5cf79..3585c63c45848793696fbdc3004ddc867a5f115c 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5758,6 +5758,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
 	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
+	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
 	{ }
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
