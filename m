Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45847C5DF9C
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ype36VspEWPoAmkLTB4QwL7y0HOmFXoh/VLCbtIaA0g=; b=OKpJ1SODGDeRIa
	Oi28CB5b7luNwAWSBXCNqO8PXaQWXog1qVdJpUYddME6GRFL2KZ1I36CPJWl2KJMX7Bshf7EEw4bk
	kb7aZe1mfI5djoDshBbnd+bxSGo92yy4oJuob24AxhfvEwXXoBL7JbnE5+IxRQuV2qq9x9s6tFOZo
	hvMQZywLbz2vzaQrookzUUruCxvvXruIpEBD4dmUw7uuz9Rdhh/z875KvMn1I3A0fax//x1q79Vk8
	Q4AAVaOpDBIJOQqx9N3IOIyPKcNaqdrdsgDkmZZCa3Db3crCAEgO5DyRjgy8CZnNrY+CdT0vM7TAe
	HX0MT3dkZNMXhbnaoDyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyi1t-000000006a1-3z42;
	Tue, 25 Aug 2026 03:40:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyi1o-000000006Yh-1Uou
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 03:40:52 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67P2RDhU500023
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 03:40:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UKkMnWvHtEU3AJjdFVpOEvwgEQWljpY1f7+4AWt13UQ=; b=LvIDGD7oXM6BuZ+f
	QN+FzLo47JYwr//wpWzAWeh36y4cR+eRp/3KKp9r0U1mx5+dtrsBWflKQl3nDes1
	uFwtV+nPdzPFqFuj7nmap4HgoUrrJT2qJNEMiDycpwv8LK957sbZbpYuqK4IYAvF
	XPIOrqRHEtUAT0e+hGvrVziqEwTH2mET2aKV3Ii6v6QzBjEdbpo7OZ5K5r1vJ5Vf
	vM9KW3ZPr0YJYp5zSgtPRzCzvqC93Mw6ggInH6qjlrr2/kiCxv9Eo4WYKUpHAP9i
	gGTUdeMXnp9Igj56b1P9i1Ia00hZxnuruoI5OWAR7PHWek4RUtFIw+eNQdH7xEzn
	btEGHw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8t1s1vc8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 03:40:47 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2d6ae2a942dso33122325ad.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 20:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787629246; x=1788234046; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UKkMnWvHtEU3AJjdFVpOEvwgEQWljpY1f7+4AWt13UQ=;
        b=aCFE/VKGXXuEaB7lJFWykDF3aZwwMLKwiJaqj9ei/iI9X26xWSy5ioeMcqVpgYk3va
         AOvTuYZsdfaNUz+GtzNs7ou0AWaqotwQGdHKdVh8Kzr7L6aTIO/YqDYKHSNY2We5Eo2i
         RTIklKHg6r19iUxlNFutljcE87QMQm2e7xfdg4bgSlR9oaQZOQdFltt53E9goWyGzZ9i
         8JJWkOaYc9WVgCnrg4kXxu6jp46M7Ojqw+cYh+jlaR4mco2yh1ArGrmVs6E0995ui9ip
         BFjVouuhYsbW+pzAbSISt2nRLAXH4OtrzCl7JDK+M2rcdDCq8kpfho6ullkwIiG0Obdy
         VtaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787629246; x=1788234046;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UKkMnWvHtEU3AJjdFVpOEvwgEQWljpY1f7+4AWt13UQ=;
        b=XkzpKoKQ1q7JwJ+F/QAAbunv+RENUgOto0X/DFgK0YtV8LvjQwO4WGkeXkKc57PDw2
         JrCmaNpunNiLA41THllpT5AGzl0Hop1cPZ5Zg9WCK/ND3sJin2HYZaPc1oey/e+h9vYO
         ssSPqENvPciZq0uIKpjlD5a4UbL8Kklfh9UYH3v5lX6rYGamBKzZ69wFyOAkfiBEttxC
         /+hoRNscD4VFAetYkMQPkn7ZU0Aew0BjchUQXSw+JO4DDmo/S6Oyu0/Aev04ahxLsG4Z
         zxBxHPLMYbO4xgRqTKRJxIQdbdQkVDH9modP+7BesF0qUibmJKuOluP+TwbEB1j3SEGq
         KOXQ==
X-Forwarded-Encrypted: i=1; AHgh+RpTRIANMZx1nquYI2CUFmX/aeue/dyfHm1or/+XoWUiVacIvN5yRU3rpT1afAGolFhLldx5PvKZD+M=@lists.infradead.org
X-Gm-Message-State: AFuF++kCEJ0837W79SJ6059y21QgQI7Td3m7q6YlQDgoD+N0xC5weCFs
	f8lmahiqS2enMNdcqF2BDpV8vIEgGYtD/DUDAlTAKA99CIVBltoy8QFqygzmSUG7+0qVQpzkB9Q
	V161gOypqu1U6OQy2StYkJt6Q+VqgKNR2lx6MTMwgAAqnWUwv84T6MVl5/rcUmVqueBrx
X-Gm-Gg: AR+sD13bjw81EIPVUBm6paTZiESg+La+DWQr/h2rzkeQVIKpfShx6LdKflTpgkg5WYh
	UxdyEgyiVDG3j2e68buQbd6AwxgCQFqDot3XEmknZoV/iD2yDl+o9gg1l7ts6qQV49XC3iRoIMT
	HxxuccJG4ETnmWQsKrEI2ehEGPHhhbc5AXSNDSp3LCxW+k+AOLUId8x4ANuxmm+nGdh7blRTflO
	VNSCos39X4G67XR8pXTTw/TT09IhN6YHdsIYY4C6expOsXoh4qOe4IhFaYOXQ5ERoK1sifKRGeN
	Js1J5Qoaa757yqt/CvFl+lyRwC3+yw/cekAkWxXTntPPes9uAylr+3KBiOqRZdc0E+UEvDrMa83
	y65y0UN0dAlm2OpirUOw9lUy4chDaAopF1BQ=
X-Received: by 2002:a17:902:e552:b0:2d1:1f73:3667 with SMTP id d9443c01a7336-2d64ae3b141mr463741125ad.1.1787629246478;
        Mon, 24 Aug 2026 20:40:46 -0700 (PDT)
X-Received: by 2002:a17:902:e552:b0:2d1:1f73:3667 with SMTP id d9443c01a7336-2d64ae3b141mr463740505ad.1.1787629246082;
        Mon, 24 Aug 2026 20:40:46 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327f91d36f9sm46440083eec.16.2026.08.24.20.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 20:40:45 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 25 Aug 2026 09:10:23 +0530
Subject: [PATCH 2/4] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
MIME-Version: 1.0
Message-Id: <20260825-nord-v1-2-7c02f2b8765a@oss.qualcomm.com>
References: <20260825-nord-v1-0-7c02f2b8765a@oss.qualcomm.com>
In-Reply-To: <20260825-nord-v1-0-7c02f2b8765a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787629229; l=947;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=YgWcPqpc0Tw7AwiZ7DA7bpWlNDJxbNEfk70+YLHN3IM=;
 b=FgWOWKoZqFMIeDM9s3u2DQ1/HwQCn4fnPEBelR3iZCOLdX5yJicTe3SRleJLsI5RGWTaneI8p
 vd/fr2IeVxYDi0IwjPe0J4/+FLJ/omLcj9r2e4rNZuUidLXjPqGjkz8
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: _4Ai2j9HmzKMxJnJydu2lwE-j7Ib-JQh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI1MDAyOCBTYWx0ZWRfX65vHEIEnY8kL
 z2XJMrXlhIzsb7o8qQnK44oEORkl6LjITeEFKb8iMm0/Ber0Nz6lKCsBNr8AeOMEYetSHVEDPn9
 ezchbMgHk3lwOKDhB3L/td5mtnZhltQcsm4H3rGkrNpdxofRlxzkEBbZVE43u8YjVNuPDlh79kW
 /YRuQ/NLkDvJV3sLaJo39vYvfpL/aXpG5ZtGgMw5hhtYJYgLDy3NzIOyJ3TQVyz3N4Ay7vg0syq
 UmMrwlxORU2SVxMzLdxZ6tGPli2GTs5y6Oq2LOt+aHYwqZvV3azzlSP540iKiG4jFiPsdQmq/E9
 pjP5igRVZvjdMjWYaPeadkbF9/CngRhx9ylMYLSJe1JgIBL/WlyXgQtZ/npReL8vRZeO8u0bArl
 xGyiEXAE06t5OYbaF+55S6zP+HV56hjoXHEZvufbtNvVMKg6J9gKxnDyQVpGQg7mTME6kKR0YK9
 JrNqEmb2PKGPFs/YmZQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI1MDAyOCBTYWx0ZWRfX850kciRPoMcD
 TgrwI/G2Hhi1BqCEt8e9ODZozcwf4Ydi8Rc/VHv/xUEBfgOmox1U8OjTNIO31UfiYOp5z8kL/w0
 TxJ8K7/h8EhyxMIaECIh0gBhLjF8DAE=
X-Authority-Analysis: v=2.4 cv=L7ItheT8 c=1 sm=1 tr=0 ts=6a8d0ebf cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=ly1VyIkaSgMpB_u5KqwA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: _4Ai2j9HmzKMxJnJydu2lwE-j7Ib-JQh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-25_01,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 impostorscore=0 spamscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608250028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_204048_520414_EA4988BD 
X-CRM114-Status: GOOD (  10.34  )
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

Add the qcom,nord-pcie compatible string to the Qualcomm PCIe
controller binding.

The Nord PCIe controller is compatible with the SA8775P PCIe
controller implementation and reuses the same binding definition.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index 63630a814f28..b8ba2c4449b7 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -20,6 +20,7 @@ properties:
       - const: qcom,pcie-sa8775p
       - items:
           - enum:
+              - qcom,nord-pcie
               - qcom,pcie-qcs8300
           - const: qcom,pcie-sa8775p
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
