Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A085C982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 10:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zv6aU2mPifOeZ448ZBg80S8SNHiOrrM295zyg+0lQU8=; b=pe5c3HH+p8+I1B
	So9cA5GIWgM9hxLAz42kgKNsHkPpEtbTs6INAiOYWvqunV3Ih8TY3TEVVOoRi4+dAUX8OZYk1KzIh
	H6VN2ZtiHsqTKfuWepkF2j6JXdycZCf8JCKKtu/J0UC+ms9YM/IvEsyrULZhFImJQ9YGSgecbia6g
	0Gdx9Ru+0WXfqO4CJ3G9VztjloUV8/n1QHJhHeXoUHfR5yijmFLSd/jzR21F2B6/lcJX/2VFiBpTu
	o9WHCTQ0YQnmSbb1QHc5mZ3jdSgJND0dEypeGqyJkn2srRbXaxG0xfrhysKq4E9JyDrXPoZPVJNJC
	itYqrJXM/W4BubsCdvJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjg-00000001nR4-2cLH;
	Mon, 21 Sep 2026 10:59:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjY-00000001nGs-29FZ
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 10:58:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=kF96zxkV0QHMeHE5whjFT+XnK0dBzEGK3CuuftD2fA4=; b=AyIfj84yNEvZngLa0tjsKUaoEg
	OV6oU//pTuaCuN1KQ39QvMtFMcfdQGXNqJm28YnsPf9lrlWOJ3PmJJMcajBqbn17D5M27PYgC12kp
	yXftwWRMPrLY9p2A4TDDEpP5TD5BZUrtrTpzb4tHa+DjhUc14r9TxloAzpIAtO59eg1KEtuEu95O8
	11Ljdq+trG2HoXJ4/txffKtjzKFskfTWvJKdjqNimDfjoDyI7M0tsdR9RrJ0kaRxCwWwtxiNPqErj
	Tu/JBmsTDldNkJEs/pffVSovPXDe+horYKLIOO6/D1wAs2mpUxYGZlYIakP/obw92KHFMYLi/peyN
	8p6/zp5w==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjU-00000003Rp4-01PB
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 10:58:51 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAdxq01563473
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kF96zxkV0QHMeHE5whjFT+XnK0dBzEGK3CuuftD2fA4=; b=gLdsjBnT8JEozPlp
	ARRjPFtotDc+i10OPbTg9Bq6dnZsZXaBsv1UCCh9II/uFDb+LcgDT6KzoswXhi3C
	QYVvDTuAcZnc3zi0MS/NIIWFglD30V2/CoNYIW9+NCSFVoJxDNBVBL6X1+eRqsmT
	2aS/JS+qbHgzQIhDsW14uDM8oPcosCKyZy+yc3BOJVaBLoo/24MNSyV5i8O8l8m7
	UgR0jOU5tINmshi1fmOyNOQEWjkln3ZVlFyL+J1LYfJENGApfKIq+eWPExZzDxZO
	XBJ3L+nIetYThBlcxNQdnq/pnWUpTgJEluaeIpJWvIUlSvcOZfiKHRrN667SIack
	jgr9tQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtysw0x60-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:43 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc72777faa2so1910965a12.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 03:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789988323; x=1790593123; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kF96zxkV0QHMeHE5whjFT+XnK0dBzEGK3CuuftD2fA4=;
        b=gPjHRU6ncDSgvOoP8/oWcP9UbAykAQ/URdeQ20gt5mWOGEixEToQgRWNdO3N8vAV4k
         9wjDI2p4A4q/HQ5lrUoWPhokreCnyuD1HsC/SYA4e9GHkPxZXF8/geaRmXWPUVHlZGcg
         ttMw9ubqGko8uEAoQ6BselXmEDUK4E6vOiAGxd4Tj1IJ5swANzKEL4GTw+jJM14ZX+cL
         /oKC7pr9pRLqzosjPKB66jqr9cOLbQXi9hrAy+1pJXlRiFKckirEczOVaBY5vVzAxBpO
         OfNMMQMuuixtQ+u24yIMmYGlJR5ax2YoAiY1Lix9vvoaEJhj0ifWxBSJd3NgxzdBcryw
         cmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789988323; x=1790593123;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kF96zxkV0QHMeHE5whjFT+XnK0dBzEGK3CuuftD2fA4=;
        b=0Iv2r8W48MRWBM9D8jCG6FKLKjGMM6rofOoxu4niQp3EX18z2qWQPKbZ7p8VBic+Gv
         yr2umxJxVONvvLpcdrLYwnGwR3LiIwULv6tR6x3xmNvzJB9lCdN1Jg7GbMcp7gN+bdPB
         u1M9kPnFCUq+YE1V4lQNwcDxirddbYFNcm6QbUjeraAXrZWyyCFTwVhFi5VkMN+DfE+p
         xRgI5sfa6dh607dPM5yMMBk3gJEpHqWZfQFdog3iClEUVda/LDR4zzGNLsZwp4qQeUf/
         Ru2ptUE1or94BqcNA32oiD4jze2VZ5m8DkfQfoPHcyevXkOL0wZWKcdhB8ub57+45o0F
         8tZw==
X-Forwarded-Encrypted: i=1; AKwUvBzh2eELl2X+OM3/mamsfto8tyxmeY6ORZh4HOqe0uPJQ+e4Q/xgg3bPPypyoUmIc2rMvQwRM7d5T2A=@lists.infradead.org
X-Gm-Message-State: AFuF++lfKxSdepG8HJDt7xzp2xXVtEWhpbCdBp7/9Haw8t2pFGUkus9T
	j+3t44Ys5E+CT0RHx5XfFzSAZOl5eZWcmLhMy6NsgY1yaaGR63WK2kdr7wgoZv/AFRhXIxKCI1z
	0o482uNcSSQJUm/qKpIjrPslKZCZCJfMCwdbMhRhIbVHbeISGmfoQVD4fiG4fScKHtF2C
X-Gm-Gg: AYBFou3wLyu96CeUDpPbVs0IijW4VCQTnlTD1/IG2NUKbh9CIl/Gt/HHW4Rd92wYbCs
	UXFKx8tn1Le4JR4J3IbeDYQaOXWUJx8D5by0cM8FZYt9FSmN9FBALPLVjD1gRCNcN0/cqiHd+Fj
	QthsjhVlPCWivh/4KHlV5PMs2HfHJ7qbeC25qBY1RJz7SqaTVq4unyr1K0PQ6+PBYgDEIFK+1E9
	MFrQjh9mvUVN355SGWBQDUtgCnzwGOXxUQXfXw6yOqQQbMPdCPefFnEsof2BDTChuigegqOYMx9
	zY5pRz+uomuvQeFuRU3M6cWEUfsqrmnCvcAAMdWYy/bn3QHl8dnXtAhWqCsvpJBLxCF0y5gj6Ox
	i5IoUDxBDIFDlX8/IdGzbMdWVp4lQ1HRocQ==
X-Received: by 2002:a05:6a20:7349:b0:3dd:a195:fa0f with SMTP id adf61e73a8af0-3dda195fd49mr10891312637.52.1789988322652;
        Mon, 21 Sep 2026 03:58:42 -0700 (PDT)
X-Received: by 2002:a05:6a20:7349:b0:3dd:a195:fa0f with SMTP id adf61e73a8af0-3dda195fd49mr10891272637.52.1789988322187;
        Mon, 21 Sep 2026 03:58:42 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c331d55cfsm23544128eec.30.2026.09.21.03.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 03:58:41 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 16:28:13 +0530
Subject: [PATCH 2/6] dt-bindings: PCI: qcom-ep: Add QCS8300 compatible
MIME-Version: 1.0
Message-Id: <20260921-monaco_ep-v1-2-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
In-Reply-To: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789988304; l=1181;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=y7UXgCIKfxY9NVUCZAGjKAqUsicIwGreJw6al5/G0rc=;
 b=p3AYYDk6246yZdu0F0RMdyRce/9hqFxR/O7xU1jhZb6da6nFAmFgT5jmXnQzv3KRyzVQsTQtH
 4BivyinDTthAoQxrZZSB9wiFpIVlMH4CvtXuZM96SJgjjb+BTZEp8DJ
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX89K6FWY20RgG
 ZlZR7/UHpgwIOglLj2rpvvRpcn2434wd9gsFHsZcGlQHHNzDDdIB3cfJoaeADiY6msaQ4kX5MVx
 boyU7ymYRtxt6GgdTbVyXOxlSDborB4YxAdqNgFYc4Ry1yFt/X7Vs5KK57DoRReNUhMtgBLQEop
 iEfFO8dFofrtrudR1dSZ8tKZ/0s0vy7oboAIifzXtOYez7pFCF4YUtdLT3tKStCHdZc4diIf0X4
 suJ1UI2ub7BlI1DeK6SAKL4Zx0ETLyvDg4PWf96Zazjn1ZFPzkakANAHTUR+oZcisP6vPJRA+RL
 TH6G7G0bpdiYkq8QNKZcr0F1Gj9v44QO8b256qeXMqNdMvuvmsTnURZfYBKYHCYhfEklly0DWPJ
 G2H0tGeH+EFRTgJe553BVfwKIh+FUaHK75a/iAAyqe5EeMiCRPAldMQyqEeeVlMTvS8QFCV7MLH
 vkzjfOItw4oWw062GRA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfXzDwqtE5Ppvqn
 bcANB/f4KsDYr9gYSNCxHJ5cso5kxMhykxtkerDX48HCqvCB6VnJwLz9YZeb5MUFTkXiwMMbOJA
 Br6NrGJPOSSkMrGctygErjLhb4EGsJc=
X-Proofpoint-ORIG-GUID: fZ6ud7_tzLXDMTG-W48FlLGw2QgHAhTO
X-Proofpoint-GUID: fZ6ud7_tzLXDMTG-W48FlLGw2QgHAhTO
X-Authority-Analysis: v=2.4 cv=W7etxhWk c=1 sm=1 tr=0 ts=6ab10de3 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=AUvBg9Asf6StguVY0UIA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_115848_300694_17DACA01 
X-CRM114-Status: GOOD (  10.29  )
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

The QCS8300 PCIe Endpoint controller is compatible with the SA8775P
PCIe Endpoint controller and uses the same programming model. Document
the QCS8300 compatible string and its fallback to the SA8775P
compatible.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index bed9a40b186b..7f9a0bc958d1 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -13,10 +13,15 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,qcs8300-pcie-ep
           - qcom,sa8775p-pcie-ep
           - qcom,sar2130p-pcie-ep
           - qcom,sdx55-pcie-ep
           - qcom,sm8450-pcie-ep
+      - items:
+          - enum:
+              - qcom,qcs8300-pcie-ep
+          - const: qcom,sa8775p-pcie-ep
       - items:
           - const: qcom,sdx65-pcie-ep
           - const: qcom,sdx55-pcie-ep

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
