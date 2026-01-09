Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F26ACCF6ABF
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 09:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cJCgTcZbER8cT8EzotU4sPi58r7Dm4h2BJIoTpoizQ=; b=EqFKwNUp/KEYh7
	fI/lykRLjeyQu0wBwtlFg3rh4+HauFaqAMWlcKxNIqPvyEV5JUah+9mS8t1501F69wo2cDZRWDPQ8
	YrIfeMHsqnL/4b34sSIWOSkeJEtzzyaiEK8I+9wg9BmgGPNSk8AJm6YhWw8f8T4aQ3baLWqrqPRY6
	koJhfGFsvlwaKTxBq+kAdeCGyH1LcYrDZfMfzm5Q3Lwidhm0wulV1L9zbji1WydseRBR+HvQFNlF/
	6I2UzxMF+ZiF9Cg8l9ZI1zbEcSVGAsyAa4uI+YTpGEpUzYvflCCTQmHJuihVw4CDHw8VUIr+G0Obn
	dtVfgsrOtRHlSoxbZDoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8iB-000000020AH-2nhh;
	Fri, 09 Jan 2026 09:23:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8iA-0000000208Q-3Vib
	for linux-phy@bombadil.infradead.org;
	Fri, 09 Jan 2026 09:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=gbUKEx6h2/06Jgs052NbO21mOGxgS4o/wlcmmWs0HKU=; b=ZBfBkNqY1G3rGkIwULGuXLNa11
	yxFp6/yWbPWm4uxDqiWwWFCo1Y1xFmhVtdPX9uTu3ELCPjTEHuj4mg+egZmZaFSXFVKqW5Hey0nmx
	/eCksf0Ucj+ZADOiFJ7XyF4WE5fZYSoAluyKYOPOPW2amZRJi7M1B+7NtmMDS87Gi8q5hKiCIulQk
	lIXqz2cZBLjaJRVIkx3+pJH4Ypx5CcTAEb8OPJdcLGffbZ+6Hg8YqvmTeQaIqGl9VNU8zJdVbredh
	GtrR6KGc6QOjItraRWnsYUecVCD+1JsiMdcNoqRpw3//486pODqVIr7b7jrn11AzWklwrprejMxRx
	yRM4OGZQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8i7-0000000Et7w-2YS2
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 09:23:13 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60982XuB2184008
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 09:23:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gbUKEx6h2/06Jgs052NbO21m
	OGxgS4o/wlcmmWs0HKU=; b=IkZmnFp0ssSEw2M68/WhsH1X67QSMzV/C5LhtGce
	qKCNDI65tk0PMOFBkqxJWqBWqgfEBi2RQWbc4paLZz+fV3alGtMUM0PJcMOJUu9w
	q1Q/z0wmdH45Wyw5A2eVXDTkUaj3neguS08kB2okCa0jn9cYqC7g62A9XsiyIpr8
	pTH9eYnf0AVV3/nWDrGpb94Aqe2Dbf3mNpFvNdNIui5eJtRGtOZ5+Wcw7uFi+FsE
	eoDYqNCIgmSnjOt+SRW34+KslU7aIOuCNEILlNBk7sk9/uGivfRsa/YysrDni87a
	DfHdhmnRQOKq9/MIa4ExaCIaFjR0zGRkMB4So9NfuuEAoQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjwtn88np-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 09:23:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bb3a245d0cso1002057985a.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 01:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767950586; x=1768555386; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gbUKEx6h2/06Jgs052NbO21mOGxgS4o/wlcmmWs0HKU=;
        b=f+5XLetPiuD/kA1ymd07q7ASbMzKUPe36noBQxr/7Euk/XxgmaQVzSXRs2BM+bS4Fj
         G/2gLLvTzqyYLrJmPTtE9faozB9SdovO+xmwT4oGEIpcXm5tz0oCIJ+ZhdjG8tx7EvKs
         acOIDXVgYD5g4wWIDW/IVo8nKcxa97edajIirlDo6bjAI/hVfN+XaOtaoezn1DAKi9CV
         ZsxmLmCz+LxkvWONqiB4xpY0zXMTYr09BuC5yd8um1GUNPSVZf5kL2BdjeB0pzwXFDat
         cEbB844wrzZU3zbmjbzEfNvBowhxZ6sFpyIm3/82727xXCKgvQnj7z4lEsqElVkVxVin
         Os0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767950586; x=1768555386;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gbUKEx6h2/06Jgs052NbO21mOGxgS4o/wlcmmWs0HKU=;
        b=IKx2Sjv+PdFjTkW5YfybLEz64eS5sjMdjVuG2vyA5J4EZBc4kY9jescbO0h/5RcvR2
         My847VHtXfwx991Q37/i/F5R2HikPrJBdBVKPopyC5A1ZeEbdCd8rKPhkQCy/o+UFR6S
         NK+itnXf7DSpPxtmIEHoa9ZXidy/PdGRcX0LDIuv8DT8eosJ2lmB/teJgD4oAEKAdb7P
         rliXCgwpDgUaaTdlvAdKIDVVMeKWJr5hIiDeR7h+8igC+7ze6UsEItfkGYNyyvHpTerN
         LVS9dEfOMxtI+T9zk+CCnMLUFF0+H2DbxroTqm3Ne0L+VlpL5/DsOR2UrJPmUTXNCVgW
         w1wQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsR+QMeEveWZEzEpWTUxWgzdQpld28+IKznjZDy4+Y0fOKvCn/hG15EepL9I/Gy8mcnSbZ73qPEXQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDe4ezev7X68qHykJHxKlj89rGKnshVzHwYHimymose0hg1pYi
	lx94/OOmGH2voZ5IPrMvMmCccYhdfVX7dM9rWrx7keKq+gCudt6UAuPi5K3NtC0YnrsbeYkdxGq
	MJK19xA/BIBa/Pt7qLSD3He6D/GMKs0wYiuCI9KKYtcjwxXhaDkoQFCGR1ySoBNRcFIzt
X-Gm-Gg: AY/fxX7t8HJ+zWwompNB/9kSQzpUaPgpaD4L8PWY5jC1NXdec7WAfm9z41DrhWh+j5B
	pd/G/sD5TONjr2/deLyj6DUOMxRAX2cW/QO8XfYBKF4qX7A/nHYeRfBZ7M5nrJZglE4qInlf22s
	UerpCo86R/IzuxGfZI3L5WCgQS5IQPcvmyiHMqss2JrER72tGVZB5cdJRFnsuAEBUDwpAXRnyAK
	Qg/5w+a3j63RoJwLV+TGB2ugCExZ/qDyTisxoQj2T5ElplX5OVJ98IfJcg86dPrl0ra3S1PkGMP
	5Rksai+FBw+gDX437p/enBvi90bW/ZI2BVh3+NUkDNiJAgVfIVHKcPRhhX7D1OrUtDcEC5L+YtW
	mqPzCx2AQtSDf21N8tR5v
X-Received: by 2002:a05:620a:410e:b0:8c0:d16b:b0a7 with SMTP id af79cd13be357-8c38938dc0amr1108937385a.2.1767950586032;
        Fri, 09 Jan 2026 01:23:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDhJ4s/J+LZvq5xGGHQag3lnHCUa0+1Z4v9U1tVSQgONvR2YU99W2TOhbQzi8LO6OYwTHnkw==
X-Received: by 2002:a05:620a:410e:b0:8c0:d16b:b0a7 with SMTP id af79cd13be357-8c38938dc0amr1108934785a.2.1767950585336;
        Fri, 09 Jan 2026 01:23:05 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2340a2sm1072317666b.5.2026.01.09.01.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 01:23:04 -0800 (PST)
Date: Fri, 9 Jan 2026 11:23:03 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] phy: qcom: qmp-pcie: Skip PHY reset if already up
Message-ID: <3h7xe2k7iis4mmowvcq5mghneyyk64epcs2hg7fjrpowl6omfu@ltf6vi6mtx36>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
X-Proofpoint-GUID: RjWDwMG_ktJkdkG9p8gk7NDRH3kcW-OD
X-Proofpoint-ORIG-GUID: RjWDwMG_ktJkdkG9p8gk7NDRH3kcW-OD
X-Authority-Analysis: v=2.4 cv=Uohu9uwB c=1 sm=1 tr=0 ts=6960c8fb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Q_-NVal78LaQRGvTYVYA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA2NSBTYWx0ZWRfXxdf6Mak4tzGu
 BxJ3x7KbJ5vuWWRZvsMDjS4rbS8Euj67VXk7wSN7LmUMcD/aV4KKZhGw3gs+zeCz+iEvQxsjMyb
 IFwfV2Cg3peVm6r4WasbeOFAStk0HuEPXjgzwI3CC9XoAkGBVnM7wdWKTJ+LyXkVMYpjC0ZD9hJ
 oNlYgtCbkWyWfmd7oSpjzP+Wml4IE0aJPfaZjgQlG6y9uODzSF4XNjf3qmmMfNMJkj5fB0geRfA
 5lp4km99FkjqPZssndpwTlmIODbF3kaTs0XIjdMg4frFkaoQYi7t1yFgWpGmIEDTczkzbHUVKao
 CIxyY0wbmE9lk8+shjwK6sMIHWkclLnK2vkgs6n3nXt90pfhaLAJzIOrxXqz+FDvfw0WUYxRroZ
 9lyYr10nMzr56pMu/TPsN265gkqJWe630Ufosxsbia1Lc+CiXJm7KyWMhSCh7CZjakxLHKeT+PV
 snSiJQnXGkAnGiMWZYw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_092312_051633_9E2F3B62 
X-CRM114-Status: GOOD (  12.10  )
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

On 26-01-09 12:51:06, Krishna Chaitanya Chundru wrote:
> If the bootloader has already powered up the PCIe PHY, doing a full
> reset and waiting for it to come up again slows down boot time.
> 
> Add a check for PHY status and skip the reset steps when the PHY is
> already active. In this case, only enable the required resources during
> power-on. This works alongside the existing logic that skips the init
> sequence.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
