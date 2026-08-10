Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B1ACC5B570
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwfPSJGKdWSuHNXWElbWsSOzFqUDGoHjHM2YYl+dwbM=; b=iLRWQJI054wYxH
	vdNBLZfdTMgYSecHIvHb0rkNMxFt97+MvnlW+hO4+HDPBOpnWUklqUOZ3dYjYjy9KwxgzkTGafB8h
	Krm1yO1k9ap1UjHeGiGTP3G26Fjv0jaiuP/PySgV1so0Ckd9UYnEYdChA5Aectp4HWQ/0CGaomiFn
	dK1M55zz+x6o9NLjCDmFe+N6HN8xwgzvnH45TBMmnCnD0u2nyzSKqahNVidfDWU6lV+W84uUXOG8a
	zXhf4+5id9i6R75MXzXGgmcjEahRM8zZ/uQUg94P8o5E8i+d9rGownOXpbHxZl+44W3NOUxCat3eK
	zxtLZsUdOipU5CLu/Jpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS90-0000000CIZ6-3ro7;
	Mon, 10 Aug 2026 15:42:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8x-0000000CIX8-3Utb
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:28 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWJMv2090749
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VwWUHl7i5SxMpjZvZ8DdyGzjAdldYolgun/dp8YjJTM=; b=jxdmszqn7wOWgM4g
	BQIxMCEhb7VA4IFBuq8zWvTYwal3EbxIy/TY5wi9PbaOaFD1LL+aH97yZQ7HvRI9
	K26RBeI/XFAlm6QmUZU0OsNQ6QV5rCutbp/nt7TkwZCpgbg9+BAcxfN8M4pSEQgx
	IwaQarj+/eWbFERrk8p7OKo1JOdPLkIGAd5uBlAXoqTjybvAXITMGVGG1AHSXLLb
	NYpTv/JCbDXfMIlGe8OL+AofhJ5H1jwNd28tyyrlGH9odQjNmWPuMTuz/F8oTrKy
	pcQ9IuPXo2pcRVkOeXjJFikBf1YOZK+XbYtt/rjtZvyzSefQ0RqUcHsUW8MXPtDk
	GujWBg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fybh59qcm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:27 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-52cd0374265so39784171cf.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376546; x=1786981346; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VwWUHl7i5SxMpjZvZ8DdyGzjAdldYolgun/dp8YjJTM=;
        b=NjGnQIn/+CaYdx2bmDqjrlTQODowMDFbkO1Ck4JhWG1dtsgGqobIqySACQ/DZnWMxS
         U5m6aKUw3hCe2LVuo5L43ahfThXMUELWYFzPwHOzAN4duFIVHUyeujj3BybSUyVn1MiR
         qABXZ7Y3bDghZe8lRnV847jMqd0fP/ngxBcIzNG0Tzmd6YBxEvARjre6Byt7s2qYNxUW
         yyMunGPocg7Vg50XCuqx2S9R2zBQ08CoUHpvVeU2lPREnigxfCswKwf3RgOlL0DLl3vv
         XKtg/i4psmJe+7FHtz/+5KC7Ox/jVVT5AzUXLWju/3fmIFoUrZt73FmqVJDTawdD9ebE
         QKlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376546; x=1786981346;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VwWUHl7i5SxMpjZvZ8DdyGzjAdldYolgun/dp8YjJTM=;
        b=iZIDncJ1DIUudD8lEZP4LHId68nkCGMVvP0m0Wm+JXcJE58Py37CmKIg9vCtoixdXZ
         ym121Jle9IiGaBQ4S+lcCYgRW/nMx9hh0fzL5Z5Si9VPnHzjerFcAQDwWTaXKUrhw/Es
         SGmnfOFdN8p2mJcZMKok2a9WLbgy1q4fMCGguWgk7PgaJe2g9k4D/x8AjT1dqu3ilQGy
         Iaeo4e0SSVclJFjigqotwca6u2/FzvSw7rPWddLHJ6V6ZRa+yJC4AhI4BeuuIyV+Rb70
         mmEtI4l91Wj/W4oFlQtXEk11ksAeX8NJW9KqpA8O5u5EQAmgGykz2HR6KsPL/aJ4eFj2
         QZeQ==
X-Forwarded-Encrypted: i=1; AHgh+RpR7s3CTdDTEf/AwJBPmtnH5sLn4kMoo48j0ckGnNXg+B2PevINMrz6jvgthCAgl4ST93eHtvogyis=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEEKU243CpDxNMU/kzZ8mfXPCVQ9AzrJhrGpKWDUkp4y7uw7mK
	zPZ4ySXH0W2D5c35BHriYqW+hbkcDURYH1Tk5Jt/FQACwpr+t03hw24YMBoApOYH0le7+HP8Z7L
	NjCoxDKJ8gtiZbKRDFUPnTBnxq+mhkYvN17YNla6ba8TleI33ZhZCo1uf7zleMRyeLnjF
X-Gm-Gg: AR+sD10HvcIaTWXGIc35viEhykSNAY1VFTHIqGmAa3l8/LLsq4HPC5tDSH2Rj3kI92/
	/NRb/BXv2CUvfpEk5Fmyct7kCGkxl1mveTaCjZQx6ageWqLofsX+O2/ZIarVOMDz1PM8ryLFZfQ
	qQenxuSmBipLDwf0HwtYdZl1Dm6unSOanbpAAESD5aCbXInURNpDiDU+9Ii1se3qJKroBeTBxs3
	F65NSSBQbL0rObWTuCirIwyThqCOgS9hV1xKfdm9ySkX//s2fn3dDMxZh6eauzDGaT+eRLUtiBR
	NwJii8pGjZ2xfCFyl9RLqhrEEwoj4syeH30kl7EGO9Jj9t0aAs3X7sCukp7/zAzemrWBs27+O/9
	k8uWMN0ttU6pnvi2Otzy2a01H3brcxlmpqzFUIZx0o8PMkW7QxYAGCPx9c1XWXdsbQSU1CvNOPq
	eYZVxprsKuYOMO+g==
X-Received: by 2002:a05:622a:1e14:b0:51c:d52:6049 with SMTP id d75a77b69052e-52d20a10f1amr262582591cf.28.1786376546331;
        Mon, 10 Aug 2026 08:42:26 -0700 (PDT)
X-Received: by 2002:a05:622a:1e14:b0:51c:d52:6049 with SMTP id d75a77b69052e-52d20a10f1amr262581891cf.28.1786376545891;
        Mon, 10 Aug 2026 08:42:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 18:42:11 +0300
Subject: [PATCH 07/10] usb: chipidea: msm: do not force the TX FIFO idle on
 HSIC instances
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb-hsic-v1-7-e5f93ea76ffa@oss.qualcomm.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1439;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=KOQNNO81+830lW+Q5k5LUwxKxi+2T+vtgXBl8cZSLfw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqefFREDbAEKMO2A2Qs9sERI3xq59bkDCER9uEc
 7ajvN/A67+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCannxUQAKCRCLPIo+Aiko
 1cMKCACItVH4hSeLJfpkqgtM3Mn+A0oSAX0xdpecK5aC/leaBuzd+gGevn7S9wcw4VTojJH0NY9
 dlDqP/dudfyiT5l7h3bhhYGIq/UmrMHFXjWHdY2u62V1hYgendPYLbXSSpPAeOKKKE2p/amEH6M
 uVck/ccgyD2q4xOK2AXuzcyH5Zm9vobVl0taSLfCTB7wvYltD46LNhXdMLePE9DFsID4VJLdFbh
 9Wth5gRpr2OSRCyTDtM9tzLupcOH33DHNSyCImYJuWTGYg9LnDODCk1HKcyN8/XMFFdlWX5hJcL
 hugegT0rjwOPAlYMZpozWbu4BwtyYPhlag1ogWOEb1BpZdyC
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=O4YJeh9W c=1 sm=1 tr=0 ts=6a79f163 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=Nuiyuvcmx6Gf9mYuf-0A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 9-Hv2ChSODSgOjZJtif05awXPPAK0hyZ
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfXwl0Uep358cQc
 Hz1DYjdr6Ps85RSpi7tRgLvAwaXkr07aHz8kqJ12jgPcWIgFQ2bclIkIoaNwDbZah901y4pYWEG
 f5YMCqvx6fJgzzpk7opRaRMhEigZdxY=
X-Proofpoint-GUID: 9-Hv2ChSODSgOjZJtif05awXPPAK0hyZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX9aCI6hlukpau
 tRzKwk+MF803l0EP/XybvnZDe92QASM2tevacX4aa+Qn7Dfl6ECOmQg4MsdUJKEwua/PhvhIqjY
 wjN7H+u1+Y9imkNAqqaNFhr9raCeXbY1ycK+DXlEAbdBax7fLHsFQBCTm1CZgSVBG6ojvUzV1Me
 sawuhDte1X9wJj+4l4DRj420ajBjXhOSjwZBmedv/sSEFpQjycOy9iJwTWorx873M8dnumry15h
 mckomnU4sKVzjIfvUpNEswnx5SOYrRdzYIcKs7grlaHtt4su2CNz9Q0vSVRrIyhiOYqV0Ac9Bfw
 b7kYd23SeF5bGKDffVprgrs2aodQDgerTA8rBOmS1En42G4tL5IP/7jcxBIn3DNw+xtcm0H9UKf
 9zZsfDDc0lhPf70fsBvveOJy4G1cVYqXhq0tzsrUc2ctuiaUT03frIBkXX/oAX/BazipDELmU4G
 kaNywh8WNI2lJakOngg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015 malwarescore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_084227_878356_F1ED5E18 
X-CRM114-Status: GOOD (  14.13  )
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

The controller reset handler unconditionally clears
GENCONFIG[TXFIFO_IDLE_FORCE_DIS] as a workaround for an RX buffer
collision issue. The vendor HSIC host driver never applies this
workaround on the HSIC instances and leaves the bit at its power-on
default (set), so clearing it makes the HSIC instance diverge from the
known-working configuration.

Skip the workaround for HSIC instances, like the neighbouring
GENCONFIG_2 write already does.

Fixes: 47654a162081 ("usb: chipidea: msm: Restore wrapper settings after reset")
Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/usb/chipidea/ci_hdrc_msm.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/chipidea/ci_hdrc_msm.c b/drivers/usb/chipidea/ci_hdrc_msm.c
index 9a9410a814e5..69be194f8e27 100644
--- a/drivers/usb/chipidea/ci_hdrc_msm.c
+++ b/drivers/usb/chipidea/ci_hdrc_msm.c
@@ -108,8 +108,9 @@ static int ci_hdrc_msm_notify_event(struct ci_hdrc *ci, unsigned event)
 		hw_write_id_reg(ci, HS_PHY_AHB_MODE, 0xffffffff, 0x8);
 
 		/* workaround for rx buffer collision issue */
-		hw_write_id_reg(ci, HS_PHY_GENCONFIG,
-				HS_PHY_TXFIFO_IDLE_FORCE_DIS, 0);
+		if (!msm_ci->hsic)
+			hw_write_id_reg(ci, HS_PHY_GENCONFIG,
+					HS_PHY_TXFIFO_IDLE_FORCE_DIS, 0);
 
 		if (!msm_ci->hsic)
 			hw_write_id_reg(ci, HS_PHY_GENCONFIG_2,

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
