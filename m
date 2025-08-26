Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26F84CA0FE9
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asfR/hlhtBvywyEhb4hfAGxJgglDF/xVWfpIrCIQ/eE=; b=sYMT9ZhTSdW39j
	FaxSsNNd5Ic0dAbgW7f4Latp2u+F7ORU4Oq3VP0wk0GAqqcyzLD/r7qWcVQtMWkaoL2jQMWm3mhzR
	sMDtU3To3Tn9QmZYxc/TFwDD4ljb6Twpl41WMAGBCG8WWcRH7jPKbG+ASBI0+Y5KGSihkKWWTemvc
	6OSrPdt94KnA/7zTdPok68tw48FvdmZj80jbeTfokXRazwXF+p4X/cZTcapH7tqNPoMea9OMku9qU
	eR/atpz51kH8qwfJsPIp9oVPkCP8x/C3r2b80Y3xFMB2yC9sQn93Tl7WiMVMEsLN1mcQs7JUIFm1H
	nvXRLIdFLpbFLbnGX7Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqs77-0000000Bpv5-3inW;
	Tue, 26 Aug 2025 11:45:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqrSF-0000000Bi08-0Q5f
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 11:03:08 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q4g3QF007281
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 11:03:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kofxhc8N7wzIQRIEJ2kzWHMlZjkxlt2XuX/b69ntAxg=; b=jsKij185oRIwGFTC
	G06TFUIWYpY4f12Wthm6UyjD6BDpogiHwBR6oQTJqXJs9d6zyTjzlfzacvztGpx1
	6+2gq8uEzZhUGwTY3XUnaTZG2vvLVsix1mimyzh5+WrtbZnAPN2bk0XSZ1/Ehdfn
	D+qKWrXdDwsuWb5GvzzPpwdzoN5pXN17XAvu1HnDL6w1RH2Zbuq74p5/5OGBfVsP
	q5KJ9qOMEo4EOt/n8RoinQMfvEQayXUbxoWeUuu4GkKl93yb65TbPuJDLmqy2ohr
	ToDiFU6Za5dGLHYATDccYyUHHujnEcFUP2lra5k+6MazM49xbMValf447RHkwGQm
	Pns/Ew==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w2rnxy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 11:03:06 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-246de620e6bso23198105ad.1
        for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 04:03:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756206186; x=1756810986;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kofxhc8N7wzIQRIEJ2kzWHMlZjkxlt2XuX/b69ntAxg=;
        b=UNhPY0PN7dddDSkOQIJYJBbNd0CkRCfwxEhsg46ix41jsrbgUO+C3o9NeGkl2CKZ60
         BU2vlh/oyXh3qo8Cnhi+FT7hYVJopihKY7H+pxu0ICtLnsUggLnyJL4DnqI7xPZ3qIaU
         9bf5V7eKozzZbH0GraDu2JS2g9rOX6CB2lHTlNp5mJianioQ1LkUq9LvBnYWaajuLz6M
         DnUz3QHzvrjojg/Uch5qJ250hdiHEURKdK3alreh4fbJK+GrcuFUikAJKJuCt3eLtOdm
         IAcSd8Uv+4mb6HcifZNL8nVdjJ5xlWiNm66d8iL1Z/zyf+RAA7z4OkDkQnCtnnWgjA5t
         5pIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqG9s78iH3idYk/LvNJjA/5vadw6nwMJdjwNJ65Lh4oAPrHRAJnNoM/dhI53km0fAyi259qgmPFu0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRjW6CbjdCvpzTZIZmBp9z4pAUqWSOyeAIG9Pa3cn8VIWGJWN3
	LrGTblebKvZc4lS8ZRCTLMEtiAoIP0ST0BmkvDp43xHqn9NoF++B1563B2O5ETtQkg+3Zjmhw/Q
	nCtcQJEda7p69xA5AXyhhq/pDWDgI88SZbrLoW5fz+d8DA4Eb5hXfBEU5VWD9xd7QgCD2
X-Gm-Gg: ASbGncuqHKOSu5JajCGRk4l/IA11DzPIL9zP41qiImOx3+w2ZfhGGF+McHJdToZgT3S
	IInZWzQuCndcLXhBCfAn8rXARl2AaNO0I0WZIve4bP2JWd2gLat4fK5XVzbCqmDKgKuXSKApgbG
	usUICV4fXTGMEozClmaU9F0k+c0tuvewoBt0kKnotkgBezin24997hEL6RfHjxhFCnbmn03J5oL
	wTvaK/9Fz0bjZmA2iX2winXHNnYFE3SfqmBLXhny5ZkEyRbqtrYqVg4s0LyH8J/w4TgTJvV3DOG
	TTGcN4h3xmCIY68QDEHfaxfK16L6ANuCJ4uM5Ljox5aynaDkWd2OhonJBaweRJW6c717y6s62eY
	=
X-Received: by 2002:a17:902:ce90:b0:246:d769:3018 with SMTP id d9443c01a7336-248753a2757mr14868105ad.12.1756206185796;
        Tue, 26 Aug 2025 04:03:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNR5imklYJZBTdqQxwSRi1KNrrUdX7w5o4w6VRejdpd1suCFnhxoCDkM0yPiR7w9hpzP36Fw==
X-Received: by 2002:a17:902:ce90:b0:246:d769:3018 with SMTP id d9443c01a7336-248753a2757mr14867625ad.12.1756206185313;
        Tue, 26 Aug 2025 04:03:05 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246688a5e5esm93207955ad.161.2025.08.26.04.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 04:03:05 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 16:32:53 +0530
Subject: [PATCH v3 1/3] dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750
 compatible
MIME-Version: 1.0
Message-Id: <20250826-pakala-v3-1-721627bd5bb0@oss.qualcomm.com>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
In-Reply-To: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756206175; l=941;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=jBBl6A3Sxsg2d6MaEgBHO65kZTpSDglRvHQ0xA/RmfI=;
 b=1sSlBVLmp2op60IIE8JykrDJE0XwehHkU6lVFh/THdWWUN/8OY+3uAMfhq9qj47gOcrJq6838
 saX8h+IJs2zD3adnZjsn0lc2ZPZOrgWNOHOhUL3j+p6YIKzf1F66i+b
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68ad946a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ly1VyIkaSgMpB_u5KqwA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXxBwmRum0MZ+m
 oVcW3L8gC89QGt9ogOWjZy8OHNO6X/qqaPzFaJ6V2pzPgI3wRjvDrl95yEeO3kgFpUWua90Tylp
 e6Kjp+0fhAUKefmxb6GgpC8jxZXvoy5AudTQvmkG17DR5j8mIKecxYey7KsnIpYUTzt6BsDQlv2
 SIGH5LjXZS6EP+Iy7uPBrftwLLk8rKx4ktRhUaUwEbtzd3YnNNXk3BupTXH+672uL6ETild4Wzb
 kFOiRQS5kRJTygvcaNI3aQFvVyQpclmIXFuBb2V1LmHQmLnNn+u+vrFPZo+gxWsnF81aUnqo0If
 H04dB9cT2SRTDy4vxEaWNhEaujX/EBFpljuIkx0cQcuvnti2oKt2+/SWEntaM5++mi3OMWNQEiL
 K+yMWni5
X-Proofpoint-GUID: LQ4it1U6Sx91mqEadK00mpYTI2hMHnvi
X-Proofpoint-ORIG-GUID: LQ4it1U6Sx91mqEadK00mpYTI2hMHnvi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_040307_141622_515AA56B 
X-CRM114-Status: GOOD (  11.12  )
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

On the Qualcomm SM8750 platform the PCIe host is compatible with the
DWC controller present on the SM8550 platorm.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index dbce671ba011c8991842af6d6c761ec081be24cb..38b561e23c1fda677ce2d4257e1084a384648835 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -22,6 +22,7 @@ properties:
           - enum:
               - qcom,sar2130p-pcie
               - qcom,pcie-sm8650
+              - qcom,pcie-sm8750
           - const: qcom,pcie-sm8550
 
   reg:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
