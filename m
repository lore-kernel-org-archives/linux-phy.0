Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B54B9D232E9
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 07:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uI4ukxJFWWZybQdakPJRwdwD6sRhNnKHZ65E1nU6yw=; b=TK8sOwAtD7019U
	DkAPJyG45iw94qWQg0SrxNaJjwkKvp5X9kkvF+h2kjVLltYbvL9hiZRc0UWb4f5Ej3WPqJl7WuKqh
	0qxRoO8Sl114GHQWnAVBFlKChviPrMU4FacN8OUnxanzNGLc0EBeh6c2LUF7d+dbAvMSauZdx1CeW
	WSAwh4mJ9Pa0i9M50E40N+DxWAzsDyq19+yX9DscyH4v8RCJHf7fmEM8xfdAhTeLDd/mWzIhBhn6d
	8h1YkezuM05V+DQWCwtaNrJyPbmduWi/Y6G9aGJ9333h28c3yJoSgbXqF6wj38kpJAMU2FN789ZKe
	Jd17UZvWo+4CTlR7BKkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oW-00000001hLG-1HXW;
	Fri, 09 Jan 2026 07:21:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oT-00000001hJV-1Vht
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 07:21:38 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6094os1Z3167579
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 07:21:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MWLM+x08j2mwTQLmHLC3ONhPhRCtuCvxS6wZ5AjUj04=; b=UfyDZENurunldCrr
	Y9/dJ2zroDAmVR/RMM4wHwsVVf7V4nuIDmjOjck7MxdsO5mzrFTnruLU9grlWnzz
	uNNy3uH87kfxlIBAY4QUJSp2F3wU45tKXtFjNthPtLI7hidI0YAoWQ2sjcNtWTuX
	mQeBXu9ApZ5A/WntG9zkJB7op6Zc2rK2k/gExs349t8WEzOWaCSG81XCqsjawCtU
	P4PAJRpJnykjUZW0VCkvhjXUntQZsQrHMpuoPG6a5w7RfupVjtL4NDKGBOY7Jy7W
	odgHgJrGdoyGiPoIInR67wjarNJUBvF8+rXXjOJd2rESdtNUoIqvFMBjT7HONw7P
	Pr3NUQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj8923xqu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 07:21:36 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7d24bbb9278so6930916b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 23:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767943296; x=1768548096; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MWLM+x08j2mwTQLmHLC3ONhPhRCtuCvxS6wZ5AjUj04=;
        b=DIpdJ2BQApYaDT9qM3DwB8OcAohGrN+8HoZKgJoY0sOCx2cR9JidIhhg8oXFt47CvQ
         rzYlHao0RWe1ULtRA2xvkoH83AMqNHKLgzg9Kwv5gq8eqcGsow+wrU3iJjGwt90BRG3Y
         moBbm4sCufg2wFaBz02jUHHfZ+EsXn2vJFFmD4OYehsLrQ4BE5e0bkslhlSDRCbw2PEf
         dQj3vdXJCnqwuLPvcUyIsZPMpc9u0UJLQlpOKsdl4I8PdarJPaSq8qLzGSS0PdKemGPI
         BJsMHW/hisvVTMjrI+nyltnggzV6VKMOrUA1+Mx+CBprJyX8IoqsHOTzBmTLT3/XutoU
         SAUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767943296; x=1768548096;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MWLM+x08j2mwTQLmHLC3ONhPhRCtuCvxS6wZ5AjUj04=;
        b=pp2UHsCIy51cFBmFy0puL+ZZTW/M/JtK60hqDhFOk/yBuS2j5oo/2jG8XZp3+dgjQF
         EcEhqRnPA5qRRAD2bvLigs7dOk5812oqrdKZ25FKbLkPPYYgqxeS3dog4KM02AKvanNH
         xLTr1teuD6yBD4ukwRYAG9+U7nc6STtN6KfZFQbJR2WjL2LN4RyPPqf+S+u2HjB8F9Ne
         2SDCe4az9xF/yBDtjtap4ndCwOFeWCz6suUV+E5KcPoANTQkrgzx5+5hv0fAJw/QDvxG
         P5Hh9sk17CiCJlQ9HiDlBfiGL8z/bpY0Vr4ySQQGF1Gu2XsuMGgIh2flHKOAyngpi3yp
         ODag==
X-Forwarded-Encrypted: i=1; AJvYcCUtXgEJl7nTky253nYpCYGKmF2gs/D0ocbCRUAQvRJsWS9mwMT/kcwibZEs7lC3H2pKBgrYccVFDJg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yws8lsn3CL7Cud22b8DE6Ev2+bSUOPpHDXoyy1icKnTZahbfFZs
	w+Op91OuNPbVjr8xA+PAu31nqqY7q+pLGyCuTLmznOG2mAqLJC6E4tJzvymK+JjV5p2Tfkn/9aI
	2MhZ5Y6Jgo2x8N+7lyjWYc4JWcG9bTH81vpb9RFplCHSDdz8xgUvgXcl2goc0CmMFe9SR
X-Gm-Gg: AY/fxX71zUJr47VEQkxv+qwx/CTGoMgSz33mXZvhtwdJqAg6nMLPqGDdXNgbxtGkuT+
	9Ol3BWkamTb+tacTG+2C5Ep8fNY6z8pAfMJSDzzlm45/nAlvDbqMNMPyQ8Ld5NgT5HaDJ3/Jo8+
	6bfB0VBfMMUkFJ8br8N5Twl+m7d+9EahOcVFMu1nAmjp1OraNXwySjXGvzNerlpqMXNOQ+I38qM
	44B201iaYs0FsXmERkZj3CQ26AILwetwY2CDTs3o5vMTJwQdpQ8C6pATNpo5dV10HbJ1IqKZO8y
	M11RqQHRb+LKQmGuOai9MEGEg0EWOcho28ISZYRTi+G4Pk9ruJA5QFdZKGtkyLaamVuBdWuApQP
	rtHRyNmXrB1xjw8sTvR4jjcpXBSrJ5ORC0Mx0njK5csd+
X-Received: by 2002:a05:6a00:408c:b0:7e8:43f5:bd21 with SMTP id d2e1a72fcca58-81b7f9d4d7dmr8834818b3a.54.1767943295897;
        Thu, 08 Jan 2026 23:21:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5oswvUvt2eSKOV/gIHmGq+k+j9ho0bKbXCQiNsUMKePo3mhru5IonqVUsfFuQd52XyRbzRQ==
X-Received: by 2002:a05:6a00:408c:b0:7e8:43f5:bd21 with SMTP id d2e1a72fcca58-81b7f9d4d7dmr8834799b3a.54.1767943295422;
        Thu, 08 Jan 2026 23:21:35 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm9510369b3a.30.2026.01.08.23.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 23:21:35 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 12:51:10 +0530
Subject: [PATCH 5/5] PCI: qcom: enable Link retain logic for Hamoa
MIME-Version: 1.0
Message-Id: <20260109-link_retain-v1-5-7e6782230f4b@oss.qualcomm.com>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
In-Reply-To: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767943270; l=1470;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=zejg997ZSWXmNp4lbxFPzukiCXSgprPeCxqQHhJcU0U=;
 b=ecroe9T2ZoReGjqBPMd9o0jNW9qHm6mLLPK+GU5EYr6zawWa3YYes2XYS1rF24v+W69OfgEkE
 LE2BGNylqYfD079R1I5yn0tCkuLwCH2KxX2PO1LpFGylbeXS0VFLHT4
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=M45A6iws c=1 sm=1 tr=0 ts=6960ac80 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: TL2GBAuYB2TACdMf0k2o_6Spt9RbhwIA
X-Proofpoint-GUID: TL2GBAuYB2TACdMf0k2o_6Spt9RbhwIA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1MCBTYWx0ZWRfXyFX9+quUKSr/
 SWrzxm0qalBHDmP3axr/njnCsZ60qynAdtsZluJCqfg9cX6+gBA3xEVzWZ3xtcFu2y1zXW+Lp4p
 8r8PgedrvJKYbY/tGFr5NH5EKnWNigy83B6uHZVX0Obup60Iyf4HozFYSTwpPX1YeTmWbb36Jqf
 y2d49WtycUOE1VF5qTjM1IMj1V01+YD0HjSzRgoCL8xO0/lC/Dvx7ixYuNmfGVsJBsVVfXfaMv6
 E3fxqLfzGcHN/tugiU7l+Z9FA8xlMQgqshYoVk+XZksllHaqcypnVA3CxuxbU+ZTcOzKCPfb3dE
 NR5QGkMy35vTBFfhSdsUPEEVA3SfRQxcBAKkSppLo1FT4Gqc3myzmW55K4gk1LXNYGgkfCmPqGt
 2xAwaZM9JcT0dqS4qvxXNQ3cLawNVDEPm8E22leWb4F3Jtb5kO6jv/yZYPFp0ROJBIFhqZT91ml
 EKatIyeihNFFcb3er0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1011 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_232137_448717_DBE849F8 
X-CRM114-Status: GOOD (  12.38  )
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

The Hamoa platform supports keeping the PCIe link active across
bootloader and kernel handoff. To take advantage of this, introduce a
specific configuration (cfg_x1e80100) with link_retain = true and
update the device match table to use it.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index bdd5bdb462c5f6814c8311be96411173456b6b14..975671a0dd4757074600d5a0966e94220bb18d8c 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1531,6 +1531,12 @@ static const struct qcom_pcie_cfg cfg_sc8280xp = {
 	.no_l0s = true,
 };
 
+static const struct qcom_pcie_cfg cfg_x1e80100 = {
+	.ops = &ops_1_21_0,
+	.no_l0s = true,
+	.link_retain = true,
+};
+
 static const struct qcom_pcie_cfg cfg_fw_managed = {
 	.firmware_managed = true,
 };
@@ -2168,7 +2174,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
-	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
+	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_x1e80100 },
 	{ }
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
