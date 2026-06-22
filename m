Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0932CDB46F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 23:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JuU1Z5xeqJoFrIPGRGTWUIdHdUIiv50txXr77u1qiHU=; b=RfNu54titRoU6X
	CycF68kgA/+Ak1gp29tsGYp3rKLqO0yBitidCrezg2Vn/Q77Ga745/ArJBFje7/jgkT7WsyvtTWLB
	2ps0wJr3054n1b/wwBzMPOZxVaYch1yIkAy0gPzFeMrP2aCUzJ82aUtaK7ioiHAKuRcSeM4yQSWq2
	Uli0bsm3tcT6CzU+mijwiZH9ijkXKVJn254lfXpQlCqtcqcXj4GSPaK50PKdFyfgJ43xsh0ufsfcS
	wDN/WKg2DRNknbjAJE/y1JD2BT4HpMgHHl4Q3bKsdhY0gr4/W1Rpg0e+2ojCtvePdCEFlEK6D3msT
	gACVcJ+AiM63DblyC6nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbo5X-00000005T0A-182V;
	Mon, 22 Jun 2026 23:29:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbo5U-00000005Sz9-1SN3
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 23:29:57 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65MJaDp42101410
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 23:29:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=euBB+DSsuvbU95CYN+XIxM
	5Maw52qyc2lYtpfvGy8oA=; b=jNelJsDgYeCo/18MLbxBAGpRxoviV8j1aL9bZf
	sCbbb5TSgNG6tgP1AgQiM0WNNfJb6dqFhItqeVXeUjCflX6YiFXiDozNl/8OidK0
	FiCoEVLRphNXfmLAo6vR8yUhG8uQ9HJz2UVLNiZbjdmzIGiznl7QSwuLULsPCXK1
	01A04GBFrQaaM8u23gyCicZtpaOy9mHi9MRmgCHAz1nHpsimWrRwPr3j6/92H7xj
	9X/4zE6EyRX4fIzLlgdp0hZ6LY4ThtF6/UUML7Fnwcxb2IDQ6ozlHc7SVDec1aab
	YgTLhBToL7ucZcJCX5Vz9tlcRZVHT2coduIt0vYQxlyWYSlw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ey3ebakaa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 23:29:53 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30c0d568830so6900373eec.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 16:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782170993; x=1782775793; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=euBB+DSsuvbU95CYN+XIxM5Maw52qyc2lYtpfvGy8oA=;
        b=Anv4fQd9f32KYQnX9LEK+5MsxWEZdrlU1LIvFuVZly8m5g3+9U9MB56KF2tFiLTSk+
         QwC5Q1Sq5+3wWv4YmG00XmpuWBGBDZZDkWv5BXD+IYh4bLNkHsCOF4hEv6S9yneMbCXr
         mKfShlfBEuateDzTsv/u6jzWRIvFkU+ozYJ1IRjAJnkYVVpmI1RQ8HxRzykujlKnwPbh
         EYoazDGfB/EMoKDs1lSi5BSzafMIUVf4ifHSCi3sN2UfQkYvLLD3KglYePskyu36kW1P
         6J6XvEmY7/0d45Q6EujIjsD7eZmtigXxInlQj1a73BmYtCiaiNHwFyNP8WkfEpKEEMty
         2psw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782170993; x=1782775793;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=euBB+DSsuvbU95CYN+XIxM5Maw52qyc2lYtpfvGy8oA=;
        b=HvmAncD8+A7b7mM7oqwiEj6t1YsWXiHbr6rIrnA2F5EGLhB1aZ7MtgqvTQmocgMETm
         tuYBRWRgb+/SBD0XZKtXClCAiQPGiYPAwTky3IXd1pLlce37LfkxNpiUNfXgtzH7aN5b
         XTh3Lngt3/V5QuX831xs1JJJnYvjEDegG2bZ1mfrX2eWCQRfOAzDcWS63oh/mrI04GKJ
         YVbcV3CLYE30zglENbgwivg6sAiH58lNaYPicC1i6z6Q/nt7vbWr3Gxt+ltg06ZthmKl
         p6gzicVQp7byBbDNWhGfUu3Fkff6toJ6jXvxWStT6qa5Hl/++byAA1Gt9EdQVignaHH2
         DYSw==
X-Forwarded-Encrypted: i=1; AHgh+Rq2NQcj7u1FwdCY1dUJ3Mdsa3r5vsI68SXZqs8N7uxnWaLBY5NqOv/2i1E0az8K9LOi7z9rXEFpBIU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQ1Dy+iVA5n7tUGHt4rm9D1VlCREQTZcHY4+LIlBt2ykRfRDP1
	3U5NbJyVBr/Zfbx+l6a3F1L0lvJP9MgD+Er/0UIaLdrI5hJU9RHNo1gr8nigFUw8d7Z0ydeZAxz
	jnRsuecSUMILGUrjNvFjTUKY5inkP9i5ClASx810O9r4g71zFgLpVRRFkGPQrk+RhsH3/
X-Gm-Gg: AfdE7cmSkgBBFlrOSKUqyu+DlEVbmowWbvmrIrDvEUxjr+sfy8vJ8gwUecsd6B+lMxh
	nALqkQE8kJPAFWxxSXqUYoSZNfaqV4GJzhoWw6/LN2UtMR3uWXIJUylFGosKEySF9EaAWs75GPW
	dV71FJ91dvKu04mKx8Cu+qoWu6PLWRKNTWVSZTFZ5+2N/ihfEPZnzWHcGF7ypgSTU3ipulxCRq7
	0FpmCqJF+CojaqzeCnWYvS3YAGN4B5mavSABFnVA5sN88ubuL08WaNySmaUDOz8zwQSFH1K6lJD
	bIaChIJWAPJxPoOX9kExdeVkBqeqWiJbN402CzZecJrQbELR5OGbzRiqkdMWmi/eqzIpy7NvrgQ
	XH3EeGwpfvfCP4lOKHX1QgWZbJtntv4S8GXylK6j8anjtXwLAiPc=
X-Received: by 2002:a05:693c:25c8:b0:2fc:9ae6:e5a8 with SMTP id 5a478bee46e88-30c58b5e602mr486652eec.20.1782170992740;
        Mon, 22 Jun 2026 16:29:52 -0700 (PDT)
X-Received: by 2002:a05:693c:25c8:b0:2fc:9ae6:e5a8 with SMTP id 5a478bee46e88-30c58b5e602mr486629eec.20.1782170992202;
        Mon, 22 Jun 2026 16:29:52 -0700 (PDT)
Received: from [169.254.0.2] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c1ba8fb35sm15339727eec.12.2026.06.22.16.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2026 16:29:51 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: [PATCH 0/2] phy: qcom: edp: Update v8 programming sequence
Date: Mon, 22 Jun 2026 23:29:48 +0000
Message-Id: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGzFOWoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDMyMj3fScytzSIt3UlALdgoxKXZM0c9M0UwtL8ySDJCWgpoKi1LTMCrC
 B0bEQfnFpUlZqcgnIFKXaWgBZy5pJcgAAAA==
X-Change-ID: 20260622-glymur-edp-phy-4f75f5897b0b
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782170991; l=884;
 i=bjorn.andersson@oss.qualcomm.com; s=20230915; h=from:subject:message-id;
 bh=xEdhdweP9/D/8BRQtRt4Q0QhNc0Omxcj7qBCNRG+KyA=;
 b=UVo4EildyTo8cIZd1ChTCoMuHKuDkKqfJvlkbmjywjHbjlNZ2aCNKBe2pVRqZNuzJmvRWXifL
 5wZWxDbUG1NB5kVQsowJJ2pEdW1cfskCZnnw5vgrqBgTqE0yZ08gXN7
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=ed25519;
 pk=VkhObtljigy9k0ZUIE1Mvr0Y+E1dgBEH9WoLQnUtbIM=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIyMDIyNSBTYWx0ZWRfX+0uuwXvwM3cH
 KPMpNAANWOHSt4+iTemxKoCMYIeT6IuKIH+G6eNLYslYrvsE4LHN1wHmss1YGjfOyY0F7P6WLKA
 SkQbNkPwGMIYszkg94id8gtUaXqFE8k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIyMDIyNSBTYWx0ZWRfXxfHLPTSf+CCU
 gj+QVTJtYMaCHAAY4P+3Xpry0Iarcgn0Y5fb68mWuHxfOVt1Sg1RwRwxWJTYHIgLxRXOrrGgGm2
 M1mZP3b0OJtDlImCFc66i4N2rYkT5/lkKC+clSndC4Pi4gOBLeJq+i8r84jFmGKxmmd1ETwfYrX
 aUOVDWlJjjKPA8P6U6li4hVT80g47IisWVHcySBN9JGZYhy/M+zf/1dmMVnwAc00nayV9ZJtOb6
 pIz099lkkwNSQkhQp9R3VqNYdZd14cISe/PUgqYKr//CTX6Ivu4uK2Lfpst6lRd1FCCdB+tMPK2
 5b1yOQEKuKqagzK8vtanoqu3cKkWHruOJZkaGYEOYDZYIMSBelC7krOOuJIwyTXZbTNh5D4oppB
 Q5BJVDRqn7uVkhYdtPp/Nr8jbBGJnlHSo7vdVOIZyEj5OP7Uwu3Up0ryGkFtrUdJOjNMU+eKGF2
 fDCEsj/64JCAWhX2mOA==
X-Authority-Analysis: v=2.4 cv=ILIyzAvG c=1 sm=1 tr=0 ts=6a39c571 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=SSnYddtK9NkD3JaiHHAA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: eOKk13Rd_jrFONdVphVy-EClJm060zyH
X-Proofpoint-ORIG-GUID: eOKk13Rd_jrFONdVphVy-EClJm060zyH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-22_04,2026-06-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 clxscore=1011 adultscore=0
 suspectscore=0 malwarescore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606220225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_162956_551071_56B2E933 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
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

The programming sequences introduced for v8 doesn't work other than for
4-lane 8.1Gbps. For 2-lane 5.4Gbps link training fails and for 2.7 and
1.62Gbps PLL lock isn't reached.

Update the driver to match the documentation (and Windows driver for the
1.62Gbps PLL settings), to get past the link training on lower
resolution monitors.

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
Bjorn Andersson (2):
      phy: qcom: edp: split power-on sequencing by PHY version
      phy: qcom: edp: update v8 power-on programming sequence

 drivers/phy/qualcomm/phy-qcom-edp.c | 575 +++++++++++++++++++++++++++++++-----
 1 file changed, 507 insertions(+), 68 deletions(-)
---
base-commit: 948efecf22e49aa4bf55bb73ec79a0ddcfd38571
change-id: 20260622-glymur-edp-phy-4f75f5897b0b

Best regards,
--  
Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
