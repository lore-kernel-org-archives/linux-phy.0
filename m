Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A96FC982C1
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 06:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8u5t6RgXMeaUUirky+U/sqSGegIqyOJ6VRuedtaSTAE=; b=Hg0WfPnfHbdtFQ
	LJHph+YzgrhDMV1rzIUWndixO+dA33iQFmMGUNE86AmSIFKi5sjtcpY0p+BxeTXHBf//eeYFzQv56
	tfd7aRJrv0eTs1GLjJNwo8vKG2fRDG4dqQeZ806NtPRq39EG+GWaeqjbo6lcEjOAeRDUKEfVlMsqu
	kNnOAnrKv0VrzPz5vaNCFjhgd4pX7HVBLlKF6pHWJZgzKqAK01Ed3htSOkOPhzYlfqB3UwvRt9nUx
	mNhZf8OjxY1M4jpokT4xyy1o+VvCPRse5RO8bfjLVSJK6FVHLMqyO28ezjcmNfjm4M1iRF+r+Jp/6
	+h269eAbae/Exg6msgWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6il9-00000008Rqx-0XHp;
	Wed, 16 Sep 2026 06:04:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6il3-00000008Rn3-3bZL
	for linux-phy@bombadil.infradead.org;
	Wed, 16 Sep 2026 06:04:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=RwbdvGMOKKAYIsYgfHVcqW903J0uvxdkZ0G0r0u+VT0=; b=aMtTCdcgwzxLKdQEAVLncO2QOc
	ZAsJ3odsjrQYrXnWlhQtIyp5XAH8zJxS6gT5vo+fV0STfbCwKAhDnaHW4Aqf6XWYB7tolzdFXwBxG
	feViNv0GwFwMkO/kyfqm/9d74wUEvhzi9/z2Tm877Bc/LZOcMGpLFXX+Bs5MDjpJunNqiMbxyNmKA
	4MaBWetph3wZ4Mv/I3hRJbVQp0SOy2tIILWTDib6ZDZo54aP8Dk7woHwhtjO3j53aAludz1XbQhO9
	5T6fEVVrymOIDj57OKt4FG/QGkk8eI7FtTPIJB3jzIX+DJVWAAlINNDk3npRlTzxy9vz+W2YSyh4Q
	M/Mc3BgQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6ikz-00000007WMa-2qiq
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 06:04:36 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68G5p5gU1932214
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RwbdvGMOKKAYIsYgfHVcqW903J0uvxdkZ0G0r0u+VT0=; b=IUXOptVMyg8/FQMK
	nLnBk6TJ851dqqwojDtDWfAwb2HRgCh6lD8vGuDvtmxtsjWMuDaRTLs4zUxIeb39
	aGy/Ulxo6SaI0f0ZmhUWrwhpYtoeuFmP2FPFwJk9fyDq2PejX9EuNxKGCIYT9tN5
	PXEmt+gMC0sBmY2trrjpljbTixnYrRvy7y62fpWG3berV7+euqdyHHG3RhCSMZAg
	Y1K5HFfAWqCZH0FYyIMhSlJIpS8xh/PYU6FQ4lPh6+60IXzrAM7VcI7jZZTjEwYp
	cfEDsIdb3VHlXF/htW6dOD+CCLtaCgj8L4let7RQp6XWeBSk/lO/X0LEEPNbAJmF
	oDshlA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqefp9ht4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:28 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-39b6416441eso10126346a91.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 23:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789538668; x=1790143468; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RwbdvGMOKKAYIsYgfHVcqW903J0uvxdkZ0G0r0u+VT0=;
        b=hG2r/B/EdDUQgDdOYz6FF3vsoN2ktajduPlwn5fx8YngweNnMskrCufLzsVpuQczV4
         BEf0YniZ09m79ChVUJ9Y2ZOblrz/mreuP7HDsq0CgNZfpJwkNw4tVuWY/smnPpv61dzh
         pRvJoJ7Wlj5SZIDBRqYUaLWZ2+yKR3yWi/GCBjtZdGZ5+q0fuUfpXksZwLa4az/x0g/l
         CgyWi9cjeMYDGGxYbc7XU0lW5+4xjv1XsX91TBitsdjYJ7+45n28ILw3WGNl9eRaAl2l
         gaFKFdi0t8yl9bi5ZSPfylfw+RMkMebsxrSnN9oPh8srRiYMpFQC0wErcLfT8B0vmoZ+
         eTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789538668; x=1790143468;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RwbdvGMOKKAYIsYgfHVcqW903J0uvxdkZ0G0r0u+VT0=;
        b=lv0yagBqYFzv+GV0LaG8OZzQAzSuVuKjOn6/vfNNvqU5TeIMlyRr3lE3UKNCFB4jiJ
         ezm/M2C5LvFlssyoD7+4JgECnmEZLzzgSBGdHxSZpknLZlKAxofZ/lCJT2jrLV4RdmmJ
         hnxiMGHGDhykzYCAvg6yoJPHNNCKIoMrH2yHAdM0+jEDZPhP90hTMU+JMHBcCXczpwKV
         nDWR9ARXv2gxD1sE+Vlk0QNZyTtWnet2qrfWBc184sayG28AEBiPDIrCrJKzvpgBOys/
         Qmk6zES/GwVgGHVbHj63ZChCvnkXuURsxCB6f6kKMNEaTKEynGqt6oaX+hGDWWpFXyFm
         tZLw==
X-Forwarded-Encrypted: i=1; AKwUvBwtDywBQloaqB5FqQK6Y5fHcImmSIG5n66fWHM3qULA3owrxHnA2lwC43mCnUqrAP3BwsE+aZ5omXE=@lists.infradead.org
X-Gm-Message-State: AFuF++lh/lukL4NrrdjUzljJQtr0ILBGx4EMy+q5cJPDZYRkEEb90bhY
	M5qvMDh5LeCtuySNiFFTfyOGYMqABHYshCx1vnVvX8z6huLOmJe/md4lgKKo2j6nS/MUXT3VUNV
	UHCZ7y+9FThAKjiLsjkxO+NStmEY9vOt3DJv6yxCxcDWtsbItqFrdwsbaJowhTC2PUtQA
X-Gm-Gg: AYBFou1Yi7dZMCGor8Kbw3iPtmtvxq0OwyYTc1FJDVa+KXkk9Tms3u4jW771eO09UDF
	fUYWians7sr3eu9aFoZojufqkK1PnC1rWyJqNd2plnvCqqJgMDVug2E3hv4ucUyCottXC75kZLL
	O8nXHQDt5NK+8Voa3v6vK20YZNyX/fmjIgrR8wRz+ZUwC9HPvwX9H34GElC/iU8hIQfuI9fWNvu
	Fuzm2fT9IS6K8Lnguk6FiOhXUid9YNCaYLzpaNfpVHFXL/IpJdlwbWkWrqoXBdud+4wssVgPUvY
	d1Us6LJVvcO1Al9H4nlkt47Hz5qDYr1M4+DqVelzzbJdPVGnkSCF0lYOj/5Bnzwm62ktfQJWpee
	woKJBtfvbHaAhw2kCq09eOaqic1CyXczWSuLE2fvfWpEBaSs=
X-Received: by 2002:a17:90b:390e:b0:39e:53a:c8d4 with SMTP id 98e67ed59e1d1-39e1e424a7dmr2960789a91.12.1789538667663;
        Tue, 15 Sep 2026 23:04:27 -0700 (PDT)
X-Received: by 2002:a17:90b:390e:b0:39e:53a:c8d4 with SMTP id 98e67ed59e1d1-39e1e424a7dmr2960717a91.12.1789538667116;
        Tue, 15 Sep 2026 23:04:27 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bfb19f8cesm4740083eec.2.2026.09.15.23.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 23:04:26 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 23:04:21 -0700
Subject: [PATCH 1/4] PCI: qcom: Move PHY init and add PHY reset call to
 align with HPG
MIME-Version: 1.0
Message-Id: <20260915-align_pcie_init_sequence_0916-v1-1-0b2195836f30@oss.qualcomm.com>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789538665; l=11264;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=wBvSB5WoOED4qErJlwYmr87tVRah/FuLj4HM3VOi0Vw=;
 b=wcM+CQ29Wxa0qsL2ZxHWjjmycqeaUP7KCCcteTeY659CQX0oEdm77HKH+Ls0itXWUSF8luEdI
 pIh/eSwUu0BD5uPtDZJgKpxiRmzQU0856rYaAzbqvhDVUyoYmIuXIQ1
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfX37aCtVF+OCoq
 jMMCQbHWkxu+ePuY/+qc1nfzUEWJSdZcfkgUSL62oGWVI6MvfgN3ltqMA79tw1XpoPXFtuXN2qS
 9g/ytnV85zUij6v040euEzBwzKczRus=
X-Authority-Analysis: v=2.4 cv=HrTjiETS c=1 sm=1 tr=0 ts=6aaa316c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=ltsZTcXAoX5SLtwclHIA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: bXPYDtN47G1yKxcoIv5YbO31b5vxTo1X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfX/l1BfvsK5CTa
 lCSouG0bv+W7kfFFx9144lDlw6WhI0vHdTwAgluqz0scuc3GchQlvS+JmQXJFJhOcaRyBtU8xXe
 wVI1ngPvgMTfBMFstyfm5pFqX1JtkE/I4kzAPOALekl1PHq/43q7x7VSxkSngb4CptYOpERj+Kg
 W9iva7PPHP5cyxNKoGClNDxiqZMJ0Vxpf9wsGoTf+uz3bj5XztWnHxDurahzR8rla7p4TJUck6t
 +dHM8b1EjVzAf1fhTZk1iXFzOQg7X2gatIrZXXGPCgx465NZ/GCiyiubpsckK/qCGaTgQgiCunu
 TuSUUSlYAmuCZo5//sZ1y+Rx4T8KuBlKSvR4pK6QXF2Mr7Gn+EgnM0Z4ExDnUmoVJOTSvZ+/xPI
 JxbEUcnCHzo4tEMAluR04w3EaJk3b538FyRTVPzrF3jBt4Um6mAHXIAlzNWdXqNiNjSWwbuanU1
 P+7dp3QtPecsz8xL+xg==
X-Proofpoint-GUID: bXPYDtN47G1yKxcoIv5YbO31b5vxTo1X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_070434_830340_945CAB39 
X-CRM114-Status: GOOD (  22.81  )
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

HPG requires the controller/PHY GDSCs powered up and all controller/PHY
clocks enabled first, then the controller's reset and the PHY's reset
toggled together as a group, PARF_DEVICE_TYPE set right after, and the
rest of the PARF/DBI config left until the PHY is ready.

Make use of phy_init() and phy_reset(), and change the call flow to:

  qcom_pcie_host_init():
    phy_init()             (PHY GDSCs/regulators/clocks up)
    qcom_pcie_ops::init:
      enable controller clocks
      assert controller reset
      phy_reset()           (toggle the PHY's own reset)
      deassert controller reset
      write PARF_DEVICE_TYPE
    phy_power_on()
    qcom_pcie_ops::post_init  (rest of the PHY/PARF/DBI setup)

phy_init() moves into qcom_pcie_host_init() and phy_exit() into
qcom_pcie_host_deinit(), right before and right after they call
qcom_pcie_ops::init/qcom_pcie_ops::deinit.

Apply this to qcom_pcie_init_2_7_0()/_2_9_0()/_2_3_2()/_2_3_3().
qcom_pcie_init_2_3_3() was enabling clocks after the reset deassert; move
that ahead of the reset assert to match the same ordering. Also add or
move the PARF_DEVICE_TYPE write to right after the reset group in each of
those four functions.

For most platforms phy_init()/phy_exit()/phy_reset() are no-ops against
their phy_ops, so moving the calls around has no effect yet; the PHY's
clocks/reset actually start being driven this way once a later PHY driver
change implements phy_ops::init/phy_ops::exit/phy_ops::reset.
phy-qcom-pcie2.c does implement phy_init()/phy_exit(), but moving the call
site into qcom_pcie_host_init()/qcom_pcie_host_deinit() keeps them at the
same point relative to that platform's own clock/reset programming, so its
init sequence doesn't change either.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 165 +++++++++++++++++++++++++--------
 1 file changed, 126 insertions(+), 39 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index ee63a6ec99de..c1792f35f9eb 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -508,6 +508,58 @@ static enum dw_pcie_ltssm qcom_pcie_2_1_0_get_ltssm(struct qcom_pcie *pcie)
 	return (enum dw_pcie_ltssm)FIELD_GET(ELBI_SYS_STTS_LTSSM_STATE_MASK, val);
 }
 
+static void qcom_pcie_phy_exit(struct qcom_pcie *pcie)
+{
+	struct qcom_pcie_port *port;
+
+	list_for_each_entry(port, &pcie->ports, list)
+		phy_exit(port->phy);
+}
+
+static int qcom_pcie_phy_init(struct qcom_pcie *pcie)
+{
+	struct qcom_pcie_port *port, *failed_port = NULL;
+	struct device *dev = pcie->pci->dev;
+	int ret;
+
+	list_for_each_entry(port, &pcie->ports, list) {
+		ret = phy_init(port->phy);
+		if (ret) {
+			dev_err(dev, "phy init failed (%d)\n", ret);
+			failed_port = port;
+			goto err_exit_phy;
+		}
+	}
+
+	return 0;
+
+err_exit_phy:
+	list_for_each_entry(port, &pcie->ports, list) {
+		if (port == failed_port)
+			break;
+		phy_exit(port->phy);
+	}
+
+	return ret;
+}
+
+static int qcom_pcie_phy_reset(struct qcom_pcie *pcie)
+{
+	struct qcom_pcie_port *port;
+	struct device *dev = pcie->pci->dev;
+	int ret;
+
+	list_for_each_entry(port, &pcie->ports, list) {
+		ret = phy_reset(port->phy);
+		if (ret) {
+			dev_err(dev, "phy reset failed (%d)\n", ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 static int qcom_pcie_get_resources_2_1_0(struct qcom_pcie *pcie)
 {
 	struct qcom_pcie_resources_2_1_0 *res = &pcie->res.v2_1_0;
@@ -791,11 +843,23 @@ static int qcom_pcie_init_2_3_2(struct qcom_pcie *pcie)
 	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
 	if (ret) {
 		dev_err(dev, "cannot prepare/enable clocks\n");
-		regulator_bulk_disable(ARRAY_SIZE(res->supplies), res->supplies);
-		return ret;
+		goto err_disable_regulators;
 	}
 
+	ret = qcom_pcie_phy_reset(pcie);
+	if (ret)
+		goto err_disable_clocks;
+
+	writel(DEVICE_TYPE_RC, pcie->parf + PARF_DEVICE_TYPE);
+
 	return 0;
+
+err_disable_clocks:
+	clk_bulk_disable_unprepare(res->num_clks, res->clks);
+err_disable_regulators:
+	regulator_bulk_disable(ARRAY_SIZE(res->supplies), res->supplies);
+
+	return ret;
 }
 
 static int qcom_pcie_post_init_2_3_2(struct qcom_pcie *pcie)
@@ -957,18 +1021,28 @@ static int qcom_pcie_init_2_3_3(struct qcom_pcie *pcie)
 	struct device *dev = pci->dev;
 	int ret;
 
+	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
+	if (ret) {
+		dev_err(dev, "cannot prepare/enable clocks\n");
+		return ret;
+	}
+
 	ret = reset_control_bulk_assert(ARRAY_SIZE(res->rst), res->rst);
 	if (ret < 0) {
 		dev_err(dev, "cannot assert resets\n");
-		return ret;
+		goto err_disable_clocks;
 	}
 
 	usleep_range(2000, 2500);
 
+	ret = qcom_pcie_phy_reset(pcie);
+	if (ret)
+		goto err_assert_resets;
+
 	ret = reset_control_bulk_deassert(ARRAY_SIZE(res->rst), res->rst);
 	if (ret < 0) {
 		dev_err(dev, "cannot deassert resets\n");
-		return ret;
+		goto err_assert_resets;
 	}
 
 	/*
@@ -977,11 +1051,7 @@ static int qcom_pcie_init_2_3_3(struct qcom_pcie *pcie)
 	 */
 	usleep_range(2000, 2500);
 
-	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
-	if (ret) {
-		dev_err(dev, "cannot prepare/enable clocks\n");
-		goto err_assert_resets;
-	}
+	writel(DEVICE_TYPE_RC, pcie->parf + PARF_DEVICE_TYPE);
 
 	return 0;
 
@@ -991,6 +1061,8 @@ static int qcom_pcie_init_2_3_3(struct qcom_pcie *pcie)
 	 * the original failure in 'ret'.
 	 */
 	reset_control_bulk_assert(ARRAY_SIZE(res->rst), res->rst);
+err_disable_clocks:
+	clk_bulk_disable_unprepare(res->num_clks, res->clks);
 
 	return ret;
 }
@@ -1066,7 +1138,6 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
 	struct dw_pcie *pci = pcie->pci;
 	struct device *dev = pci->dev;
-	u32 val;
 	int ret;
 
 	ret = regulator_bulk_enable(ARRAY_SIZE(res->supplies), res->supplies);
@@ -1085,6 +1156,10 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 		goto err_disable_clocks;
 	}
 
+	ret = qcom_pcie_phy_reset(pcie);
+	if (ret)
+		goto err_disable_clocks;
+
 	usleep_range(1000, 1500);
 
 	ret = reset_control_deassert(res->rst);
@@ -1099,6 +1174,21 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	/* configure PCIe to RC mode */
 	writel(DEVICE_TYPE_RC, pcie->parf + PARF_DEVICE_TYPE);
 
+	return 0;
+err_disable_clocks:
+	clk_bulk_disable_unprepare(res->num_clks, res->clks);
+err_disable_regulators:
+	regulator_bulk_disable(ARRAY_SIZE(res->supplies), res->supplies);
+
+	return ret;
+}
+
+static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
+{
+	const struct qcom_pcie_cfg *pcie_cfg = pcie->cfg;
+	struct dw_pcie *pci = pcie->pci;
+	u32 val;
+
 	/* Force PHY out of lowest power state */
 	val = readl(pcie->parf + PARF_PHY_CTRL);
 	val &= ~PHY_TEST_PWR_DOWN;
@@ -1126,19 +1216,6 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	val |= EN;
 	writel(val, pcie->parf + PARF_AXI_MSTR_WR_ADDR_HALT_V2);
 
-	return 0;
-err_disable_clocks:
-	clk_bulk_disable_unprepare(res->num_clks, res->clks);
-err_disable_regulators:
-	regulator_bulk_disable(ARRAY_SIZE(res->supplies), res->supplies);
-
-	return ret;
-}
-
-static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
-{
-	const struct qcom_pcie_cfg *pcie_cfg = pcie->cfg;
-
 	if (pcie_cfg->override_no_snoop)
 		writel(WR_NO_SNOOP_OVERRIDE_EN | RD_NO_SNOOP_OVERRIDE_EN,
 				pcie->parf + PARF_NO_SNOOP_OVERRIDE);
@@ -1298,10 +1375,14 @@ static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
 	struct device *dev = pcie->pci->dev;
 	int ret;
 
+	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
+	if (ret)
+		return ret;
+
 	ret = reset_control_assert(res->rst);
 	if (ret) {
 		dev_err(dev, "reset assert failed (%d)\n", ret);
-		return ret;
+		goto err_disable_clocks;
 	}
 
 	/*
@@ -1310,15 +1391,26 @@ static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
 	 */
 	usleep_range(2000, 2500);
 
+	ret = qcom_pcie_phy_reset(pcie);
+	if (ret)
+		goto err_disable_clocks;
+
 	ret = reset_control_deassert(res->rst);
 	if (ret) {
 		dev_err(dev, "reset deassert failed (%d)\n", ret);
-		return ret;
+		goto err_disable_clocks;
 	}
 
 	usleep_range(2000, 2500);
 
-	return clk_bulk_prepare_enable(res->num_clks, res->clks);
+	writel(DEVICE_TYPE_RC, pcie->parf + PARF_DEVICE_TYPE);
+
+	return 0;
+
+err_disable_clocks:
+	clk_bulk_disable_unprepare(res->num_clks, res->clks);
+
+	return ret;
 }
 
 static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
@@ -1335,7 +1427,6 @@ static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
 
 	qcom_pcie_configure_dbi_atu_base(pcie);
 
-	writel(DEVICE_TYPE_RC, pcie->parf + PARF_DEVICE_TYPE);
 	writel(BYPASS | MSTR_AXI_CLK_EN | AHB_CLK_EN,
 		pcie->parf + PARF_MHI_CLOCK_RESET_CTRL);
 	writel(GEN3_RELATED_OFF_RXEQ_RGRDLESS_RXTS |
@@ -1447,10 +1538,14 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 
 	qcom_pcie_perst_assert(pcie);
 
-	ret = pcie->cfg->ops->init(pcie);
+	ret = qcom_pcie_phy_init(pcie);
 	if (ret)
 		return ret;
 
+	ret = pcie->cfg->ops->init(pcie);
+	if (ret)
+		goto err_exit_phy;
+
 	ret = qcom_pcie_phy_power_on(pcie);
 	if (ret)
 		goto err_deinit;
@@ -1503,6 +1598,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	qcom_pcie_phy_power_off(pcie);
 err_deinit:
 	pcie->cfg->ops->deinit(pcie);
+err_exit_phy:
+	qcom_pcie_phy_exit(pcie);
 
 	return ret;
 }
@@ -1524,6 +1621,7 @@ static void qcom_pcie_host_deinit(struct dw_pcie_rp *pp)
 
 	qcom_pcie_phy_power_off(pcie);
 	pcie->cfg->ops->deinit(pcie);
+	qcom_pcie_phy_exit(pcie);
 }
 
 static void qcom_pcie_host_post_init(struct dw_pcie_rp *pp)
@@ -2109,10 +2207,6 @@ static int qcom_pcie_parse_port(struct qcom_pcie *pcie, struct device_node *node
 	if (!port)
 		return -ENOMEM;
 
-	ret = phy_init(phy);
-	if (ret)
-		return ret;
-
 	INIT_LIST_HEAD(&port->perst);
 
 	ret = qcom_pcie_parse_perst(pcie, port, node);
@@ -2157,7 +2251,6 @@ static int qcom_pcie_parse_ports(struct qcom_pcie *pcie)
 	list_for_each_entry_safe(port, tmp_port, &pcie->ports, list) {
 		list_for_each_entry_safe(perst, tmp_perst, &port->perst, list)
 			list_del(&perst->list);
-		phy_exit(port->phy);
 		list_del(&port->list);
 	}
 
@@ -2170,16 +2263,11 @@ static int qcom_pcie_parse_legacy_binding(struct qcom_pcie *pcie)
 	struct qcom_pcie_perst *perst;
 	struct qcom_pcie_port *port;
 	struct phy *phy;
-	int ret;
 
 	phy = devm_phy_optional_get(dev, "pciephy");
 	if (IS_ERR(phy))
 		return PTR_ERR(phy);
 
-	ret = phy_init(phy);
-	if (ret)
-		return ret;
-
 	port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
 	if (!port)
 		return -ENOMEM;
@@ -2398,7 +2486,6 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 	list_for_each_entry_safe(port, tmp_port, &pcie->ports, list) {
 		list_for_each_entry_safe(perst, tmp_perst, &port->perst, list)
 			list_del(&perst->list);
-		phy_exit(port->phy);
 		list_del(&port->list);
 	}
 err_pm_runtime_put:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
