Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28258606A6A9
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T9PES5G9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Mbn/v1qr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Ygk1j/zO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3eJfGcD+YQDwXaW2jNitL/pa5E3gZ0LdYAD9fO3PVSA=; b=T9PES5G9bPJ9nh/DgwxdbBUUKg
	7z5rQbZ5RmzNKsQclLQkGZQb0GlT+9ksLZiH5psD4TyMPREVXvgAYrhkKkf0ILxYWNgIBY84/+tCJ
	OqlfWijOSN/ilzi/zGYtgMBB7KnP/RrxvlGBBP3vpEWDwGsGA70GTmhPA97e6zpivoUE30S2WlJ6g
	SMenRFxGToQRxqXUvq1LLOGSZWJvGfiMeV8Cvf+5QUHS8iI5NT9sWMOml3FUDU0tVkaxLpmG5BwGG
	89nexzN7LJezFfg7M/+kUok60zkTztehL3ZIZsrDJgMViNVtcT+ixnmJg0UfG3+gfwsvt9ydf9i+k
	F1UFEkBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiC-00000007h0s-3kUD;
	Tue, 24 Nov 2026 20:01:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiA-00000007gzi-1wbi
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:01:55 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOJKWRP2855010
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zy+iehtUsspoMXUA/AtEi2Wy/F+ut0xsQzXWd1oWWZ4=; b=Mbn/v1qrEphKP6KH
	QaIjKnLmuVnDvXfbLR6ZtxJdtug750+GoiZnmF40mZeOHvKWoDt63ndD2ZwZXIzj
	gaKsI5mTH8d0CDotUO8cNR8JiCinSUgae2+s1PRRuqCvMvGyCS3laYuVjP8FrNPo
	/Ss9riJxY6fEqH8UMf3VcGJOeR75lD5JNoXVub45yZI/n3fBJLYsC+Tftu7eBkef
	nTjgiOrHVucjsX6amchlYUEyoV5XKJo/z6UFRH+qmkoDT2JzTv1Ydv7fAgZzU4Nv
	oMC0v1eG75HZ4SQB7Pi5Jik24I1IgjuaCpSevqNtqtFzXQZBgro5+VYp0X7YPV9X
	hkivAQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5gnf8571-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:53 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-9496156f74fso58354185a.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550513; x=1796155313; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Zy+iehtUsspoMXUA/AtEi2Wy/F+ut0xsQzXWd1oWWZ4=;
        b=Ygk1j/zOyyn3QKqbgxHk+3L8uvsf+eyVilVoBfIMth2h6vglMwRyNPmUV3PVNdf2kN
         c4Gt2GyC5pG60eVaEc7+y0MhZW3MxQJ2WdcqjsKl/8ZuL5XbKVIGlXKg8nMNfepL1bv9
         J8fzPbM4lTwDadRF8GPoAi5OL0dmi+jn/h9RxFSWxynnL5dNIRIDlPoKg5B9lhw86AtF
         I7lITIzjUqjUX4n7BtoSzRGMYq3/y/Gd38u23fkfImb84kUibT42mfgd6SaGP/bRuOCh
         56STpaNrdgevjA1bOOMNB9fPnsZ0Jg8W4bCSqrFbW7jwStx1PxKSkH92GUrA5R86Cmgj
         Xk4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550513; x=1796155313;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Zy+iehtUsspoMXUA/AtEi2Wy/F+ut0xsQzXWd1oWWZ4=;
        b=ZXLDXV00r4wgdldzvw2Pn7lvEIghTn0AstjUiLKrnEfZXcsEaW9mw7fUQH+vwCR3Uk
         E/Nrhw8Yo5U/LCvilnrI+3pdGPd3hh1TpatIWVOutmqrrlt8cCxQCNRApiy4jHP659wE
         sjhf90rBFsMzBdnmyk4B3p8PvHfUu20cOXL9jGHNqBz0jO3zqgX7JwC9W0TR1aCH1epa
         aKr/280eg93W/ewaJrS+xUj0Wgz4F0brLqSBVUBbIJTKGRJOkV7IZOL3hV7aUUIRKBhK
         9IyMFMla+Rj0ipSfaDq9JKyrEO29DMpiSbhH2IYvAuXZhKpP+XbGEetxQ6IZ60+y4fs9
         +C5A==
X-Forwarded-Encrypted: i=1; AL+hErHqp4a1945EDkv10514xZA601CJhHYjLRpZ1CRid7UDzEMWJFmXLLcxOTfft6SMyQi98HfNr9HddPQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z+eXZOqz5N1y/oY9cfPVJ89+VhfFzxWob7qH9V4iuywXwzwdraU
	NpDV9vMVdEpByDwsfykP9VvE6UwEgu6IgUXub52jtqd+oZeOX0LaQpabUx0he7Tgl7xQB5i6gbr
	sKTFNXJqeK0QGFjiA4qwqVTkpokHixbusz4IHJSyDjcsi3O0EaalmsNL9+I+eC6gsueu1
X-Gm-Gg: AZFdTZcph4WVhR7i0S0qnieiFM2JuGUb1VriunCRFsKWo2TfA2Ms/lLwLXthurn1u/q
	pIS1KKiEqdfLGec7tf+DPNsajuA/Ib76rHq8g42hJ/QnrgYMmX6x8IwCt5GgJ8stslgCFmuKp3/
	UR7N9RtcUoEaouQLIv+65M4haz29tghFw7zYPzoIWm1NoiFRDq63HCB5vVaiFBXG8wqZ1nFMBNk
	MpLnywC1QMQaRchuj6T5ulr9fcwhSiHrc70EKW5O2OI2EVadHlYUq22csZwWyQAxkrXmKRUDz3P
	JEVhkcyrIE8ReVbOUj1RKNDG+edlpWSx08+z2TYVK7qk+EG+bX28a7R2kGCY8KTY2Jb9cTwj64B
	ZLuyeAvIyF6qdnLXhjVZqzOJWuiChqGPg2wK//dyTS6VDsQXzlqxaIzkb8r1pcG6ZEm5R7IozXd
	AcScQEhmA=
X-Received: by 2002:a05:620a:a11:b0:93f:740f:5a62 with SMTP id af79cd13be357-949bab7d122mr2707796985a.6.1795550512846;
        Tue, 24 Nov 2026 12:01:52 -0800 (PST)
X-Received: by 2002:a05:620a:a11:b0:93f:740f:5a62 with SMTP id af79cd13be357-949bab7d122mr2707788985a.6.1795550512169;
        Tue, 24 Nov 2026 12:01:52 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:01:51 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:33 +0100
Subject: [PATCH RFC DNM 04/15] soc: qcom: pmic_glink_altmode: Enable
 TBT/USB4 negotiation
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-4-a9b45c69cd38@oss.qualcomm.com>
References: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
In-Reply-To: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Andreas Noever <andreas.noever@gmail.com>,
        Mika Westerberg <westeri@kernel.org>,
        Yehezkel Bernat <YehezkelShB@gmail.com>,
        Mario Limonciello <mario.limonciello@amd.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=1317;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=3/ET7POdT5Pe+t+Zq/yBmXJJgRV/1106W5V/3UIdJRI=;
 b=qv7cILk12lrlqRgI8UZiPG9d9Yieiz5lkd7kkOPhcEJOFVffw1JubNmMvhJFTs5tWJE7etKhH
 eT4plqUe5EJAL6sEKHgE1mFJ/adw3SwYZXmYsinV7VV9tLoCicCt3Zw
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfXzqoliMXemZbP
 IxQ0BZJ7hPraUDzfQm5YaRwBtoqRSrwLG2rr/Kpb6r+4jrvvdYqpQcJgb4z5aD8l1F7tH4jptsG
 t3qIuGnCzW7SwR3blG0X85qqyzCzEjg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX4kZT6GjKsQMH
 1FHpItENsBU0W7pitaeCU+iAwktFYZA/17GOME5totSiUXHa2/nhaXaPvKPVSmEOURtLTkPmN4L
 BcL/v/CJCDwBk3NRyAFCC4RZPJjHsyfDmaz2bQi3fualluYIFGRMYcKX2AS37r5jfMtKJvCEZTl
 xuZURfZqHlPpb4ta+Qz/msXglYaGGavZk4gMOw1PS376lA+TbVNxlq7W3U43kKQwA1oKt2BEVcM
 IYboS8WuDu8/oIsm2E6ZeupZiCCDQeBzlsC7a/3urH01hiQAdvEuC22C+YBKX/1wiWOxK01wnuk
 1yeCrWMvwXyltRQ8plsHQAzIR5w7shN3WQr72lQv/MiPies1+62NNg8QMVOHuoJx7UlyPJBYqMl
 2pmfyRDU8tKIMgOOoisg6adQhnSTGDgB5xFh6zQ4KSBtwcgwuDk9NdjXTnqDf3WnCaoYxGzGlxT
 +2bEjxqnPOrvgn8rrBg==
X-Authority-Analysis: v=2.4 cv=f/Xdl+yM c=1 sm=1 tr=0 ts=6b05ed31 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=WbklaN51CGUtf8hYuKEA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: zNYW6reHDw0_fmRpZkSjGFTMP-F4ARMm
X-Proofpoint-ORIG-GUID: zNYW6reHDw0_fmRpZkSjGFTMP-F4ARMm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120154_625530_D52C776E 
X-CRM114-Status: GOOD (  12.17  )
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

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

Now that USB4 is supported, stop identifying as an installer image and
report the default OS type instead. Newer versions of the Glymur SoCCP
firmware require this argument before they enable USB4 tunneling.

[missing W's s-o-b]
[konrad: commit message]
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/soc/qcom/pmic_glink_altmode.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/qcom/pmic_glink_altmode.c b/drivers/soc/qcom/pmic_glink_altmode.c
index a8097c54a65559b48f64bfb65a1a4d0d8e033be8..f54d02994eaa96af04c673459b28edd482de37db 100644
--- a/drivers/soc/qcom/pmic_glink_altmode.c
+++ b/drivers/soc/qcom/pmic_glink_altmode.c
@@ -571,10 +571,9 @@ static void pmic_glink_altmode_enable_worker(struct work_struct *work)
 	struct pmic_glink_altmode *altmode = work_to_altmode(work);
 	int ret;
 
-	/* Set OS to installer for now to restrict USB4/TBT negotiation */
 	ret = pmic_glink_altmode_request(altmode, ALTMODE_PAN_EN,
-					 FIELD_PREP(PAN_EN_VERSION, 1) |
-					 FIELD_PREP(PAN_EN_OS_TYPE, PAN_EN_OS_INSTALLER));
+					 FIELD_PREP(PAN_EN_VERSION, 0) |
+					 FIELD_PREP(PAN_EN_OS_TYPE, PAN_EN_OS_DEFAULT));
 	if (ret)
 		dev_err(altmode->dev, "failed to request altmode notifications: %d\n", ret);
 }

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
