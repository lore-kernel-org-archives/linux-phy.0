Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5D3606A31E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 19:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ECkj4qtm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=RORMn7lU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OJ+RvkZj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=b5m7z32GqvAlJiypK7O3ckzdXgVmqAPNGUMSFx4SYwI=; b=ECkj4qtmQywzqUHUNXhnB4j3uW
	eSo4vWJLyOpxhU3X8EDytjsLKLancYBUXtu/xFbqs4ahYg/MDnRgDieUnNpFv54Ru4XAh16NGoi0g
	t7SZH2QWDGItWSKMlkvqw5MuarPbG7lN+ISkhLVjFdQv1SQSesvYqhW5pr70PlQxyJwlY9PEzNoIF
	O/J23OzkNNQBuQN77UC6XJp+2fQjSeqxykVfjGolEthTzaHJnXpu2TCo4F/cJMOdbtTBG4DJmzg0H
	lYMIvXDQ1HGjjwBa/bO8+hhCAusdzD2uc7mjLswdx0KqIHcbEKYeBVEF2RzPMVQuu3nhGcedPEUjQ
	wcsOBFXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehg-0000000EDFp-1aw9;
	Thu, 26 Nov 2026 19:00:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehd-0000000EDFG-2oIn
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 19:00:18 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQFu8MR2068329
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4IOae1sTZD6d+T98tKBjA43zUCmiaBBmOoNmMspUZgU=; b=RORMn7lU6cjZUu9n
	rBkXpGhdt03vuQ/8JNw4HTz9VLUfhi8wsI2OrO0yC7CFvPDJaBQr99JQ9Bcj2Maw
	CT/w6cFZfk9zqdByUUNYzlqh88xjQ0OzDisuhWy6SUrebwr8Ai23u54uPukPiA9x
	AfDDx6k8S+uVwPRjvPBbbh25yEAr2EvqydMDhHCrf4opCii9eacFe/AF2aP+icwM
	7Y9JwUinzImZi5wFyvXuImg7fE58GMr2r7OJYntRjSyEXF4GE6dqIqW7AZvjH9yO
	9Hbz5LrBu/tXvxH3zEGvSSxHaO0w64b6/dzvvTR/vAJwoXuktMm4xitYSG1vI3as
	qnS6jQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j662y49my-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:17 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-154e9d2d94fso3486081c88.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 11:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795719616; x=1796324416; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4IOae1sTZD6d+T98tKBjA43zUCmiaBBmOoNmMspUZgU=;
        b=OJ+RvkZj8+KK8QFtWANWVwtJzjgY5rK28+IfbokIz2FcLf31zdTpiDW0lbOh29qO05
         aIWLfYXTM6/REI7tAkNt25OOf5ZXLqqy0jXoa8RG0Xuj+El0C7+B8fNZDDp106Vmvn3L
         VxAkMnHkerqYla/WQxWjmNWOBeMEth4taXNM1NXM2VdUemzDO16Jk1pQKFnPdJZA7zVN
         A8NHYBXjV6b9UrOFYU9vSonIxNRg6xfTy64BF2wJO1wdnPQv/yVD2Kx70xct27bB/sbA
         mBgEa8NMpiHZOaJsNaRY4rk7qkw+qrZMGFWdq9h9mksBz4rM58fc4ULLrfJn2dcEJOa9
         V0vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795719616; x=1796324416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4IOae1sTZD6d+T98tKBjA43zUCmiaBBmOoNmMspUZgU=;
        b=OY5iuxlb/MHtrE1Zdw2LFw7Lm1VtIwPnkLnPqREkcYUBr9K0G8YC04oY+m48WvakOd
         tgpVMqWXVrKc6buTKS6Cc+5azr1dZakMs9OyPwePt+OHxr3owtIo6qgEFM39tJL1o96c
         08Yg7tTcFZheuW7NdSBlUqtFZOGt/SuecBgM6xgyDuABOOzD6dpUBeIfsuBOzxGnwN5H
         HUSHhQo0ytM909nak2gcQD15kUCH/MmxoNbmQBYFaFoxl/FWj9o6QXywUMp4BRQwq+8G
         Ay1jdyTmVXd+PBrHKlw5Q5lRA3j9G8QQVGqw98UyeLGJr0na/6x/nSaQiAYaXz4sR/d0
         6DAw==
X-Forwarded-Encrypted: i=1; AL+hErHZyyx2KKZNX/4nVpYKoyR3338xMHIjbOrJNKbAoJG3a5PAIecJG0qBbg/tow37rWfuLqeIvb6TomU=@lists.infradead.org
X-Gm-Message-State: APuU4Z/1KkReo81s3dnVzJ8motc2fjyoOosfUGns9/r/5Kj5wxk5y5K6
	p57Ipl+zEwSXu+yV4FN7381dC9lU/9uEOuWdAxE2AkPOTlKj1hA75IoDYs3vR9627kpNUWs8bwZ
	p34O9srdAXfDmIq0t+S2rnMUJylrSYU/L1X9Sn1lBOGIx0EDrfKX9toVgOW9dQSpx60lM
X-Gm-Gg: AZFdTZcg1GpJYEbUw+ez2P0OZTGL1A4Xuc2FMkRXm6bfV4coI81Ur267PYp0Byilwl0
	iiIIFPgFz4GNRs7SkKhCDhyCQZ6tyDOvTy6Mve8Oqb1b/YGvfxzQH2OmmMPcsvEPS1GTCgqL0sL
	c1DFV40Wd1mZKWl20eQyulIs598i4uuJqcXNInJjLT0WTOFtP1ZZHwz6nS5H6FIG5Q0oZ3gNFTq
	SNDRqho25XCQjj8x6YrehhBfD8H/IfaGzdEvMGanqL/H/DL+D/IEt85V9+Hxr9T3IKPH4uuJGqC
	Ylju3/BdzCXoDpsbWTCp6o2XbWvi5mYHeXX4wDL9pMUQhqgwMseQ/NAXZsKzU69b0LXMMPV/B1D
	KltXdLvQ6qqG+CObeTzMVN9u9PQU9kXYPnCZhHYTF/dBOI95VbaGvQaPKLdhbs7YYY1iqEkxqkf
	BDZYnE
X-Received: by 2002:a05:7022:3f0d:b0:1b5:58d:fd9b with SMTP id a92af1059eb24-1b5568f03b6mr23745151c88.31.1795719616422;
        Thu, 26 Nov 2026 11:00:16 -0800 (PST)
X-Received: by 2002:a05:7022:3f0d:b0:1b5:58d:fd9b with SMTP id a92af1059eb24-1b5568f03b6mr23745075c88.31.1795719615743;
        Thu, 26 Nov 2026 11:00:15 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567ffa8csm60868190c88.7.2026.11.26.11.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 11:00:15 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 00:27:13 +0530
Subject: [PATCH 5/8] usb: dwc3: qcom: Add support to keep GDSC On during
 host mode bus suspend
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-usb-pcie-gdsc-suspend-v1-5-485a08ffdc6f@oss.qualcomm.com>
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
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Prashanth K <prashanth.k@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX9CBRcRHXtBTG
 4zyuYCKjGI7tnzKZ+6ap59OhzZm7aRX8kAqg45TMR54zGFtT3ZKenDdsCJV7emJyi7jbrfrV/Hd
 ELH/D9gtzhlewU1o4tvOvY+5c/rniCfYioojNsClD29HS/x0zZDs88+qoLFNyr3VaDTn4YCZTcx
 5ZyFWcmaI9tHLvmM1rosP1erXRfi5xXLpNSi5IGealhC51+zXODZKyTtwv3ew/hh1OODgLUOws7
 iXelE4CgqKLxahiOBR/jS8sjNGFuPscaMJYuGwrOXeCex0ISTa2qj4w/YwFEe4n8R/Bp6h67ABt
 IWBI9MNJqNKpCiOwkgS9x0ZAIkufmw2fQGDPhsQUfWWGkNtZ2Fw+tPE/1BBaIoTAQRJpGimJyEh
 gvfSm7I3VRDGUIkQj96vW1HfI9bzB/FbDv/6xI08mUROWbLeryBLeA76Ur/iNpZvAbP1gvSzu8V
 JYEztWCpiWu9iR7ciVw==
X-Proofpoint-GUID: b4hHtXEu-9RO-XiH4a1dz9jTOTU6nv3I
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX5kH2e+zF+B6W
 AcRgVyUmo/rPQj7z8ewt9I30vnlf05Ram+FIIHnSM4ii10nqyhpZKnfWz3k/pGhja2VaSm0maID
 3FIhjHaFKHONSLeL/8eSxso8KVdKKHU=
X-Proofpoint-ORIG-GUID: b4hHtXEu-9RO-XiH4a1dz9jTOTU6nv3I
X-Authority-Analysis: v=2.4 cv=W/KtxhWk c=1 sm=1 tr=0 ts=6b0881c1 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=g78jQFkTSXp5-VZghQ0A:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_04,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_110017_719327_8C60176F 
X-CRM114-Status: GOOD (  14.80  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

When we perform suspend in host mode, there is a xHCI crash seen on
resume. During bus suspend use case if the device is wakeup capable,
the GDSC needs to be kept ON to retain memory and avoid SMMU faults.
Set GDSCs hwmode to true to keep the GDSC ON during suspend. And set
it to false to ensure GDSC is turned OFF during cable disconnect or
non-wakeup scenarios.

Co-developed-by: Prashanth K <prashanth.k@oss.qualcomm.com>
Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 drivers/usb/dwc3/dwc3-qcom.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index 5a68025ccea5e5df8860f540f718262b7d8acf8c..99dce28dda065583b91ed965d917e977519cfe58 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -13,6 +13,7 @@
 #include <linux/kernel.h>
 #include <linux/interconnect.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/phy/phy.h>
 #include <linux/usb/of.h>
 #include <linux/reset.h>
@@ -391,6 +392,9 @@ static int dwc3_qcom_suspend(struct dwc3_qcom *qcom, bool wakeup)
 		for (i = 0; i < qcom->num_ports; i++)
 			qcom->ports[i].usb2_speed = dwc3_qcom_read_usb2_speed(qcom, i);
 		dwc3_qcom_enable_interrupts(qcom);
+		dev_pm_genpd_set_hwmode(qcom->dev, true);
+	} else {
+		dev_pm_genpd_set_hwmode(qcom->dev, false);
 	}
 
 	qcom->is_suspended = true;

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
