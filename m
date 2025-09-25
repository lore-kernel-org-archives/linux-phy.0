Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AD07CAC5B8
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1OzTSOwNYC+dL90Gk098uJy2hSOwYnCb8ZW92NjiEM=; b=LzPhlQ2g9RjrHd
	kx3YytQOLgW7f/jTQ//zdKA/laarirWSQww/5210MvPiuEUs03he45CrKamREpcuUhefl9Sers1Eb
	glrAfuC508YFi7n+LXLkewZDmRV1FvdWyQ5M9N4j4yWnnoZumTouUFZ6qxER5a+oSEuqS85hH80Mc
	uC8vEuL9gni1lKBeP8Mtlv1Z30EjMggzZn0N86ZvVV7SCEzvJcT4ShOyDHso9nwa8WLvEcwQ32LOp
	TWQmD1kUUI8TYGX6/qK8O45NUlvOvAaLR/K7rv3rjEfJ6zub9MRJp4HP2bNvAHrjixrxbv60lzunn
	JbuQjy6xxF0M4/0roPlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjK-00000005Itg-494s;
	Thu, 25 Sep 2025 02:29:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjD-00000005Imq-0icu
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:29:04 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1ajA5029565
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DQ/0YD5xMRw
	3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=; b=Pm/x9kqwjXpeuiM+EFdZ8VP4H6E
	1Kr6LbYY4UNfgps55EkFu6Yi0SzhcW6/dABhIM1fQoEuVa4D2QQliEBoZb9Pr+3w
	D3PJl/AJxZePybRFQDRHfRhIrD+wtUGvLqIitlDV5MAhDgwekLQ4oT3Rc/njzGe2
	mMfq37HRf1LZp01RbbCnt/Fue36p+jezVTG2Bg1El09GBdTImF8OxKWvt1zMMgnf
	V6DyvFh7faCMB0GQkjGfl3lvkzG7ptYBOYHduZQkMa9T1xAUf1F5hRU6wqxqHXW+
	/kOyremgd5UuvpNdYDN2XPyhmrRXEhtzGpKG7ekk1alptfjEeJyePtIDOLg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fpasy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:02 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eb2b284e4so713738a91.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:29:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767342; x=1759372142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQ/0YD5xMRw3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=;
        b=hCC7xbWtgELpbJkXIbqSSzP6ISgPc07ktC/+2ezABVnWTtWH7Rlq0wvxLVxrYFodMe
         WV6soSECdPdD/MuQBJW7CnJ+nNHgyDUbDhK+ieL2gxI7efAxa6ivhM5on4I0JevfE18j
         oCgPWpKsMMsjuFVwqYPUMz5cAihv0JNKNZ2Ba6WND2lRkQSClIfmu4GvEd83u3LeoJs0
         BV70OrcUaqxZBn7mlP0Xr+cGwOXg3W9Mq+wSjylwsHZIhHu0aRDoje3UhZOKoJMIGiXt
         aNPQszpubVLaEODtMiquQMxey2xx7ctXgX7MkYYAk/qdeTYlScQqukUt2zviJdtkKbzQ
         8b/w==
X-Forwarded-Encrypted: i=1; AJvYcCWUwyxnCwBhaZg46gYLVyheey7t0TI71ka2k/iDKvZedowE4a+oHpHlm9iqgT3oTJoC8RHPNY26ewk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZhSMlWtqUU5+ymQUexYQCexh+k/zUjw6qQRRS3PTM4QCELu1O
	OCqo68eBZRUsX690inyhDGF5QKUxtLvvv/U5CpttlhGwukg1U9zVLlVtqePw2xbu6/hUYtGcT2s
	CCldXwk2V5Ip98/Irbb8iOps51Yit+UeaUYFbrmojnK9PcIDHtlncPrZDv1e11AmcVEzw
X-Gm-Gg: ASbGncuryShBmb+QorS+zD6SeCsE2d5FAJXyShN1/lho7qzvKdp+Jl3KyZaanuoYuKd
	x3pGwLCP3osnDuZ47npKV8qlT5Sqk+bfRopU/BJWifGsfBveO75NaW3t8CmgO/Cv7UW3dcqo1f2
	NTqIXkWWcRR49aNLRNj53VoJt3nHsmrl1N/v1e3xUH5u/8EHt27fRQdSsof9lrE38BwcysJoHF2
	dFVyDYpYsJl0KHzVQnFWxYWQPsjgA+J2VYTDeE7U2Cd5JvO/O6y5hFnM90CX7445GbRW7P/DX74
	Lvs8RUfMGBFweVNCQEmr4uKlUhW3jkB/tU5RUeGc7HhnY44CKD8ee29juxb4OyAKZbaGecyF3Rv
	YKTzIZEnApHIDv221
X-Received: by 2002:a17:90b:384d:b0:32e:64ca:e84a with SMTP id 98e67ed59e1d1-3342a2436b8mr2376232a91.12.1758767341947;
        Wed, 24 Sep 2025 19:29:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHa9Ej68o30zwHMqd1RYxe408/D5PXvI6i6Er/fRTSy1fm27Fjs2od49tjoO15fcRaB1IM5Q==
X-Received: by 2002:a17:90b:384d:b0:32e:64ca:e84a with SMTP id 98e67ed59e1d1-3342a2436b8mr2376195a91.12.1758767341386;
        Wed, 24 Sep 2025 19:29:01 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:29:00 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 05/10] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Wed, 24 Sep 2025 19:28:45 -0700
Message-Id: <20250925022850.4133013-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 3QIymfbzdiKVMdpMsmqtjrXTRERMLLaE
X-Proofpoint-GUID: 3QIymfbzdiKVMdpMsmqtjrXTRERMLLaE
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4a8ee cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX57cpyQ43fRhR
 PkU7VhQSgfc3JSP5tJKD3uzRhfj0ug1GKAEqE6RhSOPb0noYB5k75fecHE9cwapapzk9V+38kv8
 DM6dOTJ0lZ4GhZ6qhNBtE8FlaAhI9+H8iLAUt6ewGZzguHTXR6mP8Lfd8FkMNSB+YBxKvMHwN8O
 KK1jZ7+nQ7YAKCKbtKH+RS/JIOvd3C1/JTKA9DGcG9qgayTV3f1rXcOVKkGHlBaSfY/OkhvV+7l
 0+Qez26n0gDxmiaUBQi0lLXSY9WnSTQF85zMoyLx3RNvHbffC5cijZrHQa+X7J0gvRPoQ2+SjFE
 w9x4zzRB3mKNtB2bhenRqx5xV6JDeGew3512QamajxpDlX80dUDFeLPJVMeBFJPtmBqRQPGIro5
 fzBYhf0M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_192903_209122_4C834B81 
X-CRM114-Status: GOOD (  11.02  )
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

Add the compatible string for identifying a SMB2370 USB repeater device.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..0f015a4c2342 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8550b-eusb2-repeater
           - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
+          - qcom,smb2370-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
