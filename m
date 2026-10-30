Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA04606A321
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 16:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RH6jGwb5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pcKpA1QB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Vl6KRAR9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=v2/fINl2ECQTNhMktnoMdOARTjBTO31eSzG+iMrwmHs=; b=RH6jGwb5jD3noqVRiITqh/yHyp
	ynAO3mbM1NnLdMXWK6DYAQLlVklxCvM4+67P+DhdHpN/tJeLo7PTqoThNfJKYjqGTV86s8TWwrqwp
	Qf49X4ctZCX4vpCur12jNtTrGhy1WPUTA56wmQg0nK0WXQ/X429WwOn2mXQYg/+2gnE1797+4brOd
	FHwaTgx1/hUJrwuFc9UM1sljKkIPdCQCzTIc6w3SJl+MGZvMDidSOYYElgpE+T6IMsdriaJmVwWeV
	fs1JXSwvJ1QKka9bOlWq9158awj3oi2A+zJImyD4aiQMdq6SuEXqdCixlJdgG64J9pCVg6/rrg/w7
	MCjdsO5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMptY-0000000CAmB-1zhA;
	Fri, 30 Oct 2026 16:56:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMptU-0000000CAl4-2dfm
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 16:55:59 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UERj0t3207537
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 16:55:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ExZHM9hPcqVst3NbQ2hdGZ4vWGi1/65DTEs1IfXZWwo=; b=pcKpA1QBUxKqAvAF
	4lK/xm6iCV9fsyY7HjvxQF79U27otjHQSDOsk8I6TBHx1rzXcSG6P6Sk1o3dVMv6
	iwS/xrcqK4vAylsQhKPjBB8PtH1Oi2T3Rco69SOIUBrDxgrPfgOnvcfnIfI7nQq7
	GGUcOA0EeKPoFs9gFW+t7pvkgPjK60RuQ3en/uoLj4biuV2wM4qcptDvFsaIkFGU
	cFb79XfkkHmVJ2M70Gvo68H3Vnm2kOf85EnQx9bbj3xz3d/jYIMUxr/380L9ZHgK
	e8pg8KHvQvVK4xkCIagbk73vhl/qq5Hz1YNu0ZvMii0ep9L3WdtuJxjKeNsBYsud
	NZGOhw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qm3bf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 16:55:55 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2eaae8d29e0so9747655ad.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 09:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793379354; x=1793984154; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ExZHM9hPcqVst3NbQ2hdGZ4vWGi1/65DTEs1IfXZWwo=;
        b=Vl6KRAR9bHzHtwzQN9dZ18Uga6UB13QEltekQ2+wYLtbQPL36arF84JorK2yNTZKqH
         ejJPCxDWjDc4WRkdEfSj004we4tKVXEvDJgEu2F6ctMUCJ5kiL56sRYwrmoT+Irtf5Hb
         JQ0MqfeSwr0qo0J8NYDF96FBZcqhjIT6Imlk6l+/lO1j4epcR5FmyJcJsRhMgALMPplm
         ZP3QqtNIrcTKD+dPCgS6efCwX08bsWUxHq95ZbjEzqhQclT25VXfQv1+DONcEnW45s71
         urrYeas6gIC5VRQrtneMRGvo71CWlwaFmKCD264rswjGmYpVXuBperLnk6ELJFuAu8jj
         vXeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793379354; x=1793984154;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ExZHM9hPcqVst3NbQ2hdGZ4vWGi1/65DTEs1IfXZWwo=;
        b=2PBiE53cSeVASReB7rIIdtCaq1nnn5dUBQ8ol3LDzHLmbYbU0NOAAT/PvBsMitMtcn
         l3J895pA2MV+joIy55ls0rL2XYzhYb88yW3LM9YdP1I/Wu+hmSvEl75gsMrnZ4clqAae
         RsoCXeNStXx2fDbk+p80svM1xAUW/94LU4Apk8hL+wCjORu7eBc1IE5yQ3DwT0fge381
         foSpChYHtn4uqV96WfNRjaLDk3ieDGZNISYyZjtwMczRBK39BpMn5HmkXVPqRBcta8q1
         FYC/QWWXqgMhSGe0H8wgSAhIa558JBp3tLFpSlfNzwK4BEiJjQy8iCD0gx4sQ0r65EOm
         JVUg==
X-Gm-Message-State: AFq9FYJpBOWiWUEOxtmbpe9vfDQGNk1iHQyTiLMWsd9AyyTQLiRbQRij
	odBnMgV7zsfDB+kp7wyQ7Hl/mNkLL5ZtooY/QNWiyhUb2BlMmsUCtlBOY+Mab3eix/J/jhlV5+O
	s1jGwOg89dVIL9pkoeV4qtiKPa03Vxvez88t/jp5/2vAxcgdcTZJQ0Obw9UKuD4WiAhZ0
X-Gm-Gg: AYBFou15IpD2yii1IhrQQZAK0zpW/c3qY3GquOeTFiZuOZhtTeCTgW0UVd5OdWlzePP
	B1BvRTKWwWLZf7NjgAoonKo5ZrG9lIZIaAPlGszc6wEkiphvJ6qG1HUaO/pzVOeSJJMPRN3punL
	fZ0c7vml5CgtM7++Q4xjSQRiBICRMHT050vRBlbx4Z5xiLXVFyLoYTaXbeWWm7CEmfBfD2l7nN+
	0zA6V+IB/B8m+eQ32m9kHwWbZRh7Uqu66yDDTssMlpQTkUU4dcnEk2mLr4oJ+leX25NaTEJDcuK
	oXkfVYd1oH9CoEvglCYUUN/2LiQiELkN/njZOtGBfbSa/s710R8pmfqEOh/XdnB96qz0mhJvlgC
	CBk1f6xsHKkARm4B4dO+qtTv2Hr6kedCc+b4qxAiLQPMiRxFKeIW5KeH9pIJoY1bsN7aRLZcAiK
	Gl
X-Received: by 2002:a17:90a:e7d2:b0:3ad:a270:a623 with SMTP id 98e67ed59e1d1-3ae8957452cmr2511746a91.4.1793379354264;
        Fri, 30 Oct 2026 09:55:54 -0700 (PDT)
X-Received: by 2002:a17:90a:e7d2:b0:3ad:a270:a623 with SMTP id 98e67ed59e1d1-3ae8957452cmr2511714a91.4.1793379353761;
        Fri, 30 Oct 2026 09:55:53 -0700 (PDT)
Received: from [192.168.1.14] ([115.98.177.53])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdb096d3844sm1087439a12.11.2026.10.30.09.55.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 09:55:53 -0700 (PDT)
Message-ID: <8e78ac53-4dbe-4684-8f3f-00f841c60972@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 22:25:41 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 10/15] media: qcom: camss: vfe: Add support for VFE
 1080
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        rshankar@qti.qualcomm.com
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-10-95f250b18612@oss.qualcomm.com>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-10-95f250b18612@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KsrYSmWN c=1 sm=1 tr=0 ts=6ae4cc1b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=iaXPdgsK/hfklW56b25dCw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=WYfwUfNkXDalausCwDwA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: VvH24KKbfCC0nA6jMrV1dvlFkj5eqH8H
X-Proofpoint-GUID: VvH24KKbfCC0nA6jMrV1dvlFkj5eqH8H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA2NyBTYWx0ZWRfXx9H8I+YZnj2Z
 qmK+A/6dhl9hmrtsjSmxZ1FNmboppMSlmOTIBehr4IXV0qttiv4lhif+8zCjiGiKOaZkwEeKtAe
 lO4NzVqEXzmiZeNsWamfhgQE3sfmkxSN6iZvcmOc2WB8TXtW0T4TRMczYWZxyDnkDV8nAUSiJH+
 7kupW2KYm8lZctFbFubfP+yCCtlN0zF2nMRfGXsATxCEE42jrz+Or1R99zIgzGOUCueSlNLy1da
 2cqve4uOc2TUJHOEghLrwmiRQfs+7x+B8dDTdxjib/BzHrjI2e8Q2oeI6xxx8y/xafwS4YsGXTx
 MeRcv/DnKz7sACJUocPBO0VDJc6poTEFNkakDSM/M5r6gPovLFXuWIMyXkO43okRwAoh7TGadVB
 wai62XpTBQBaDv7vGA5+LTEj38UuNZogxWzjjIutyTeSIbKv68rn5CAl9fgRGKocNOS2QtQXBhE
 HVAsuDyd5vg4apY03zA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA2NyBTYWx0ZWRfX1I2gydMSf5vH
 gaV28qx/FigZmA8Nz9Q6tRRlsVmwuAWdYnLMRiz0WAF6/LVdTn1prt8Cg4NQx7fKV5gs/1ALRGb
 fkOrxmlHz6f5aYmRns9U7eoDDJLb9so=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_095556_932380_F8233399 
X-CRM114-Status: GOOD (  12.36  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 28-10-2026 20:50, Hangxiang Ma wrote:
> Add support for the VFE (Video Front End) 1080 found on Kaanapali SoC.
> 
> In the Kaanapali camera subsystem, the front-end blocks are referred to
> as TFEs (Thin Front Ends). This driver continues to use the VFE naming
> in some places to preserve consistency with the existing code and avoid
> unnecessary renaming. Support is currently limited to three output lines,
> matching the constraints of the CAMSS framework.
> 
> Kaanapali requires REG_UPDATE and AUP_UPDATE to be issued only after all
> CSID configuration has completed. In addition, the number of AUP_UPDATE
> requests must match the number of buffers queued to the write master
> while it is being enabled.
> 
> Although real-time TFE traffic is routed through RT_CAMNOC, both
> camnoc_rt_axi and camnoc_nrt_axi clocks must be enabled. This ensures
> that the PDX_NOC, which sits downstream of both RT and NRT NOCs, exits
> reset in a fully idle state.
> 
> Co-developed-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
> Signed-off-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Tested-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com> #Kaanapali MTP
-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
