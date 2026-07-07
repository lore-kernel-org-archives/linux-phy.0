Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 440B8C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 07:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACu9rn5iN3h/OGtUKGDPzIKJ7FJ1Skvf4N4lytSE6n8=; b=Ou7DUzdpYdJzK8
	ntmeMbWgiyC980L4tNU/gW/c0ZhfcLiSCugnRO3V4RTEbUEJe1ApYf8plmCx+/i7eOHoQ5BNG26X7
	IlQYZz9qoFgyLGnoFrDWWZJpOtgunP3sER45l6dfY12uFjXL0ETZ1seoVcbbRW6SWPLxr686resFL
	/AVoiPD1uilPUztOGPRQvJSEdTsEG47w7bB634cw1ygsv5LZ0qLigyoMfu9qz0a9gej5/aMvJbOMC
	k4uVStdF4NqYANHFec/FYtLwBxUfGvsukTSSuOowsFbGjxg8vQT1p5shDGBdzc3h+JHe4Q9tpgVDT
	/WJLNCAvMYddU8UoTP8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0PO-0000000EKuq-3DpH;
	Tue, 07 Jul 2026 07:39:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0PM-0000000EKuR-0jGg
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 07:39:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6677MrGT3129422
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 07:39:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N5VwMHfBch81Arpnf3XxcrLytGeCBsLmqMYTF8TAhRc=; b=c3XMNBfEXPwObhEC
	sYYcdbxg9RsVGOFU5/laQ5mqY43/UvSv01StTZ75ysqdcu/PYj+NwbWIc7uZg7aJ
	jeiaE0su2gJtHNsYMs8LxYPCDxSOR6HRxi4AzGrsHr1DZHcPfFHwSjRfULBwuXrF
	Wmc8TSuuN90b0ovWr5hbTbkxVc6Scc/8GgGUE+urVZan9NiiFEGV0Z2utzP9Wz1B
	LelIiDjV7d2L9gHSRr271AKVU2JVSJhQp8ayCktJ7QthLF5G4OOy5ZkNcoGofShw
	pnMMKnIAP2lQ6iyjlslCRWeqQrI/+U+bh8sr4baYZp56AvZ2G22H3wp4WkSmzoS1
	+SJsEQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8w11r1v7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 07:39:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c21be5bb4so26926701cf.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 00:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783409995; x=1784014795; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=N5VwMHfBch81Arpnf3XxcrLytGeCBsLmqMYTF8TAhRc=;
        b=CUM+LjG1n1kdx4nZxZb5MG+NRCHSqsSd2bfbQO8VxSesaeovgBkcA7HKEDCca11Zai
         59ZYgHw6nX+foVFkKb6TeUbWncymymcVRFcJzDleJLsL1/n0107mFX5+GAdMtIpBwtxg
         xYcYWDILX0KjO1c7VPUYtOkfT5XzwmXOdUY18JVytXJc0ktBHkv1HS9ie34TWO2s4Ff0
         Wn06dIi/AT1IL63E4q2HIKr2QjTeiQxJ8nGANFAIUuhxxF9a44HEAx4J5jV1hC9ZH6Mh
         93TBp+BLFE1Amnmuc+JSqf6GlZk/NyAZGd0fVBaAM/td6Rq/cZwiQC7Zmvmm4G5IfGL0
         ALOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783409995; x=1784014795;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=N5VwMHfBch81Arpnf3XxcrLytGeCBsLmqMYTF8TAhRc=;
        b=pxYCCASvodWjTNiX5KTyJfLeXOdpyELVt0uLO3UX3NPfiYMUsdki2iBq5MmuTJiEa4
         kYd25j+0HJqY+WPNTHIy7NPXzEHAxIZuL3aLh9im6sBTcVKattWHmP/8zZbVxjvuogN+
         Ydl4uu5FylX0iyDwn1Wv3VG44AwJykaLT4QITXUjejM/63498aOV2s8+KvuhBCyioYp/
         W4nm6SXYaqz1db4idL7u3qXuxA7c9xEbLrz/yX4r7YAJeuxSkTUNmUlh0fbmCIknPx7F
         tbAFwEjhgckiFO4FrIU1tSvudhBE3zH/y1VnhDqFES56H7osuu/tqylpZ6C7tzrlETdi
         m2hg==
X-Forwarded-Encrypted: i=1; AHgh+RoJdL+W29fXDzAVe91Ql3mTHRa1z+HO0Mr/KGZPYcHcfdeRSXEg90Ylx1glvc+CkO43nJRvM38bDLk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxs3S092QRYGwyGTkpTa5TAppbMlP/cEdbcN57kUbfpImBq+03D
	YtvjJfCLNmtihb1Y6KgRM7OgBmkm3Qe2/UlDIxvKHsUBtcfPGQ59YlWAq+gUxK8q2QtgVEWQxz6
	fWx8mmYjrP/8PRpWSBqhS1Vr71NLVc0Vyt1QSVOIFKWbQD5tQdoqau2rye7nh72g/OW2B
X-Gm-Gg: AfdE7cm7LWMZ1AZexFhX0PWHzZME6+s+JiuIygtvWrOBBwlSNJlZTM1NPGYIQ14cLaq
	+SfvQ7ad2Hxfjl+PJ4FDZfXfEoGCDLh4eMgWM8jUTxL8e3AEEuft3aJdEKkF/JrLrp2YfTi/32/
	7vS6sTBnVfzkDBrnflE7PXOOGI38jWnx9PJFvRPorTZwqpiWODgF8d9cKa0Y/qLDXCGrxoXHTpd
	dyTcQ6PS5VchesHT9reOq+FIwP8HJQU6X0kib+zg++Y5pM1Oup1AdVEP+HVNhKg5P4HYFcxW6q4
	frtdl8zMnh2O4o9fWcV5Hq1vvDAHQFsdp8iSvFGksEMu/kqRYZRw+gk7zaroj0HY93HCimnUkWt
	P4cEDLZX6XcIlxiGckDqJhN/l0vSJVFMcLEQ=
X-Received: by 2002:a05:622a:15c2:b0:51b:eab3:4ef1 with SMTP id d75a77b69052e-51c79e120famr14083941cf.4.1783409994702;
        Tue, 07 Jul 2026 00:39:54 -0700 (PDT)
X-Received: by 2002:a05:622a:15c2:b0:51b:eab3:4ef1 with SMTP id d75a77b69052e-51c79e120famr14083761cf.4.1783409994334;
        Tue, 07 Jul 2026 00:39:54 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69a19daafe2sm5002929a12.25.2026.07.07.00.39.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2026 00:39:52 -0700 (PDT)
Message-ID: <58acfac4-3bdb-4ead-88a1-376d88dfcda0@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 09:39:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: qcom-qusb2: correst PHY description for
 IPQ6018
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
 <20260706-fix-qusb2-v2-2-8d9cd73b1db7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260706-fix-qusb2-v2-2-8d9cd73b1db7@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=DMe/JSNb c=1 sm=1 tr=0 ts=6a4cad4b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=nGQjb-Uw_c1jaiDCqCoA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: mrZZBItU0FcXJqxGOTcKyHZrNVVXsb-q
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA3MSBTYWx0ZWRfX+N+kvuaMoQuB
 MTb+Y/0WdU4M2MKl5JaMACpvziUuW+70fYVco0iAkoXef2CKHsYAXKecPx6EpE51oMchAUWgnzJ
 QHhL6WqjA8r9JBWEsDJCDQ34Mb3jEE0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA3MSBTYWx0ZWRfX5zQ0Nd5RXT+A
 BcuQaaiCBTXlhUQWgungJx8Yl5cFheZUNu2wFgCe55Fd0M7hUX2HZUsYUEI5yBLkC5dm3fq8e4V
 4OherfXSYvyVk5CeOhHnBIY2TK4CS2jXK8o6rxoXNANNsBkIRNFisrXO+ZESdORw1hHF+2RgEMA
 RnvFrQzlb63QTP0/bCOnlJVID1oRh/N8c9hMucou0Dl0DF9Gy4HtazgEOjCmy4NW2gRpT0WYp1l
 UW3NZvenRVY08sKQsPvPGkxOfUemDZKZBpn2DqYpFgAQpHKZcVOa+fa4IGKK0WOFeHkD2aFh9Fg
 6ry/BJpbmPRDxKaumVSVQv6cAoJ6aqD7QwTObevi/Er+uIendrB41yRz3B8E3UmRwhBQvffIELc
 hWuCq8bTAJTnv/m74rec0KXRrXG2VUg/4V7LYAUtMOqlVEuX9IC19hmO5TJuTwFDjayncLLXM/n
 Ldm8I7SL2w+BM2Xqwwg==
X-Proofpoint-ORIG-GUID: mrZZBItU0FcXJqxGOTcKyHZrNVVXsb-q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_003956_252355_2E961952 
X-CRM114-Status: GOOD (  13.13  )
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

On 7/6/26 3:53 PM, Dmitry Baryshkov wrote:
> Qualcomm IPQ6018 doesn't need to reach power collapse or retention of
> the USB voltage rails, so autoresume is not used on that platform.
> Instead of programming a fake register bit (BIT(0) of TEST1, while the
> QUSB2 platforms on that platform should use BIT(3) of TEST_CTRL),
> explicitly disable autoresume programming on these devices via the flag
> in the platform data.
> 
> Fixes: 2cfbe6765b7a ("phy: qcom-qusb2: add QUSB2 support for IPQ6018")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
