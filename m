Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A82606A329
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 19:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TNu4LcIf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=UVYxaEhj;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=a0DKbs4r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+LBNfx7lXZO5jOXnTfXyjW3ZnBuDbp543N9vcEI/aWg=; b=TNu4LcIfszqRoSCtIptftlVVPk
	iuqDz2ewnz6ebfKe2ODKWuD4Si5BThSFXgIMFIg0l2SpjvzNURFVTZYjQ7cthhZQnfQn+ivyx+H5C
	tW6bcZ3h1evJxFcCpJhcG8RPeOQAeByxZzKjaX87Gmlv1ft4v5pLv7N6lR8PobjrZGUlsvuwXWHjo
	e8ALoX5ThCigiqoGEmmF+jAC+rrsbDNCorYoQbgVyJv2GHEsRpDaWt6+z+pX7qK/EGyai2XX1JlPV
	NyfNQCzJCb5+AyGND3k1AmKXtwUPy5/eOvJ8dWSlUIhQJy/1xoo0GSVWFLeUQxW5FcDRdA0GGgzhF
	MgoF3ERw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWeho-0000000EDHI-224W;
	Thu, 26 Nov 2026 19:00:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehl-0000000EDGk-3gKN
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 19:00:27 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQFu3se3357106
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hpP9kl81pgIToPRpqYOmQ0/Zx1IHvYVCKMq50UKWD8Q=; b=UVYxaEhjntMYa9O0
	dH006SO0nd85FBY0g3QAWB7wSuD7kROeU3PkIETwmNqfVuZZm+mEBbMiyWyFFQtQ
	xEuHFc959NE2Q5oceIxH6kQK0MekS2jwr99qDoct/sZR2gDhZ+CQt+xFVtldiCCJ
	LpH9JbPRHxZpCNt3h1ukrvwFvYMUt+HgZJ6Tm8/kl3w/NYNg+3Ot2lg537Q3nPco
	P/hXTPKPJVtGPC/bBdhLkxztPQmw2iW8ajjs3y1usJBKWEAQPlDUlw4bPv4vaTpJ
	/b2n2OXNJzlwEJ0s1+t98ihe9uOq74D5Ibk3dGz1LmyG/OaTjtQhVeg1sJVraM/v
	0t9DGg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j66qfc6an-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:24 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1b25d977b91so7776460c88.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 11:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795719624; x=1796324424; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hpP9kl81pgIToPRpqYOmQ0/Zx1IHvYVCKMq50UKWD8Q=;
        b=a0DKbs4rk++FHWuaVWjkawX3iW1T/bx/qX75ehVU3KChzzCA06lLoqO7ioyQIb7+lT
         Yp3sNz3IhXqqe7srjM6felfIrd2gqTIt1no9gcqkYSO4D7oGXxNpIz9YvA9xRu/eL0aW
         QO1YhSiUH9R60fxCwEi6mA0lwusy/vEil+oD5bLrILzPQCZcUwfT7LTDirR5kNbLdqKr
         rjER/jT9BOuyyVlgHJ6ijKeX7+goIntDDedppYh6pXxsGrI51bk6pWK2+yfBoJfeHKw4
         JtWfRoUoYoc96AsgdLRuOgbVb4DSmGzXqJO3TS7glcsyZYGBsyXVnszQub2M/ap2D38y
         yDgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795719624; x=1796324424;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hpP9kl81pgIToPRpqYOmQ0/Zx1IHvYVCKMq50UKWD8Q=;
        b=ZhFDg09DicNBUA4V5lf9KMaSpCPsVuCROLt4xVqhyDLYAk09zUPANVjvCmy800o5lU
         ucRXH6XR4e7SvWWzUhpns3UeLJYq7uSLpNW9OVEELoVJQwNal5YjCIy0JrlCEAJkm80W
         CrwgEc2+jFJNlNjI2fODfLSxYaeAxLrWXogdPTDimSnFUK+HpNjnn5ARY5/0MRq39oYO
         vnpGigNZSsB63fRA4Cs1VGUjKMhneVlwZuq6ZIESmY20RbYFNoWUZuIb+/WihEkRWmLv
         w50R+OwktkHYoj/CuBpjgvfpH1kFcmc7izLdypRPBzZc4p+/UKpl+hvEX1s3qC2FWZib
         F9Pw==
X-Forwarded-Encrypted: i=1; AL+hErHw3xHl91Tnz4aknlBJp9NL6J4BvEf7zfEx3fp9NU92xTeHQSMurOFGRS4Y4jyK8FRlvIiIG7ooTlI=@lists.infradead.org
X-Gm-Message-State: APuU4Z8Nt3XDiXD3JCiFUkFpVRyUEfsVsHxGH5XPysFT6aZ+83O6xCZ/
	3KJSQ3SkJ1SKZ+IMj5/ctd2t7jLMjtuMz2pZKe8uvrHbzZfHLii7iILxJLG4HbCaucXJ2Pvy79n
	Sj3JcCDC+PyPG2B9m+xxuNmb8LR1tJWm9jgPaa1QiAAHByFU8RPkU77biep3ThuT0hKQl
X-Gm-Gg: AZFdTZdJ4OdpK4aIB74bdLhdpKyAgNdaYIDFH0+sCZArvNErUKu95CfkLaebgmUeNms
	6FAswKGxWwGgcvMYHGWc/HKPpxLfwub8P0YPmIeUxa2lTK3jU4xNItD1wvKokfcJfN7m4s2WR5o
	bX3DXLD0pTu0cpFbwV3tsdVm78C+q8mYfomjPAp2XzUpMITXKSb6huZE3249Jkub7rabo/bjs91
	+6FMk0V4L8dB2NZRptgb5mBPiDxAFme+vrEYI2E4PZi8dJc2h4d/oTrx4NIHNpnjcA+/TBPNpUU
	hor9koBqqsALrXul0VkXz1buFNtolW/iKKg+S3RSGt0xM5hs9YwsmZrxLbnVZKRbFM1m2O4cfqf
	Oi2Lm9nQ+7mBw2xZ+4xsfbkEt6MvFLZwlySzcQ4Ifx3n8JpGpc2GmoHuGRXN9PcUN3bq0TKZRI/
	tr93uW
X-Received: by 2002:a05:7022:e0b:b0:1a3:8d5f:6f93 with SMTP id a92af1059eb24-1b556882ac7mr32753252c88.17.1795719623766;
        Thu, 26 Nov 2026 11:00:23 -0800 (PST)
X-Received: by 2002:a05:7022:e0b:b0:1a3:8d5f:6f93 with SMTP id a92af1059eb24-1b556882ac7mr32753196c88.17.1795719623073;
        Thu, 26 Nov 2026 11:00:23 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567ffa8csm60868190c88.7.2026.11.26.11.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 11:00:22 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 00:27:14 +0530
Subject: [PATCH 6/8] phy: qcom: combo: Keep the PHY GDSC ON during host bus
 suspend
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-usb-pcie-gdsc-suspend-v1-6-485a08ffdc6f@oss.qualcomm.com>
References: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
In-Reply-To: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pci@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Prashanth K <prashanth.k@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: O_AXMCYDi1NBSSl82hC1cfc5Svm31WBJ
X-Proofpoint-GUID: O_AXMCYDi1NBSSl82hC1cfc5Svm31WBJ
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX57Ldz5YLPes3
 tcQ0SP2z9DlKxbGt9LDcRh/VVKqnJzwjXijearSimSv7AhcdAgpfTOT06ae9oJIZ8rashMDZrof
 dQkW02kUFJLe9Q2LnhOzzxDiqL8Ll1A=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX/Mcv499u20qN
 PkMNIEYQaJj7lNX8yH04JrYnk9QawmjvWzbEMVGAj0EJGVncGHR/aCre1phkUsutFT90tNnIh5o
 mzCLf1ivcHk9vkiyTGeqCPKKRjzoxndxDKYs6SUH77ajpIUKDFaPG1GywswxXDAb1+U4KgYxhoI
 XspfpaZU4dnlpJ+m2qXkr8EXCSSQrdvSUqgmA37XkAhn50Rs83lNADJrU0Xbu09HoBxGNrmjuu+
 8n7M7PyTtQBq7ygWibsHq3Z+Nd3EJEErREPn+vO79aO/YuqgK+zUAyQw3Abk8v3a+3lwQ29uVzO
 g4CayXxteOjFTabI9UNQiSjI1WznsNlmVmC1gDN52/k2WfJtrk8N3mT4DglGs+MOzBPcDv8Ge+h
 4KqXBlUNLTpgudtH0qyF6x8Zw3L2ttYUSCZFkIXyKCPXV9nA9DnD6GsMqI2jtoTZmFRa0mHTXL7
 kHPMMcJ4nsaSC08h2Aw==
X-Authority-Analysis: v=2.4 cv=Q5VHcI2a c=1 sm=1 tr=0 ts=6b0881c8 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=bOxi8P5hmqam2w8o8_wA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_04,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_110026_040335_B749B83E 
X-CRM114-Status: GOOD (  16.05  )
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
	SPF_PASS,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Prashanth K <prashanth.k@oss.qualcomm.com>

Keep the PHY GDSC ON while the PHY is runtime suspended in host mode,
so that PHY can resume without losing PHY state.  Allow it to turn off
when init_count is zero, or when set_hwmode_dev() isn't supported.
This allows PHY to consume lesser power when nothing is connected.

Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index bb921ee643dec46265015b9d11d1f669834fc2d4..d8b7cfd9644d49780d706a14bee9e7f314cbdb19 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -16,6 +16,7 @@
 #include <linux/of_graph.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
@@ -2592,6 +2593,9 @@ struct qmp_phy_cfg {
 	unsigned int pcs_usb_offset;
 
 	bool invert_cc_polarity;
+
+	/* true, if GDSC must stay enabled while this PHY is in use across suspend */
+	bool toggle_gdsc;
 };
 
 struct qmp_combo {
@@ -3432,6 +3436,7 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_refgen,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_refgen),
+	.toggle_gdsc		= true,
 };
 
 static const struct qmp_phy_cfg nord_usb3dpphy_cfg = {
@@ -4723,16 +4728,25 @@ static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
 static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
 {
 	struct qmp_combo *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->phy_mode);
 
 	guard(mutex)(&qmp->phy_mutex);
+	dev_pm_genpd_set_hwmode(dev, false);
 
 	if (!qmp->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
 
+	/*
+	 * Keep the PHY GDSC ON during suspend, so that phy can resume
+	 * without losing its state after host mode bus suspend.
+	 */
+	if (cfg->toggle_gdsc)
+		dev_pm_genpd_set_hwmode(dev, true);
+
 	qmp_combo_enable_autonomous_mode(qmp);
 
 	clk_disable_unprepare(qmp->pipe_clk);

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
