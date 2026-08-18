Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3156C5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 10:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8y4pYtRk9Hta6BRXq0H0yYZa9qcG1/PFYMdn7yRtg14=; b=y33OP5Hu0CGQJA
	92wvK+F4p7LqqX8TEsqhptosjf5AyHnJUbdWoHHff7F9ZWrRJiRltn6DR9ygfyTQVmv6f/0B9fwMC
	zZN+1ctHe61QMMHXADUfJxJpm3ER42/aC6uNbFAQr1TcQwtJhIEzMQFJZz9tUZ1RATLD6d3Fx76jH
	nUa3Qz8GBz84mW5cb9QwQMwgGtn6HoCSWK0QeHPA5+ZkIN5HbS1+fuEvxYCEb1K0slWrsu00d2xOh
	hLw0JfaKpscBG1dASF18ehsD+zboth8FTgNb332FtaHk5BVEX+ZOS9EsSjJgxEgnLrURV2VsO8q96
	riHxspuw/fb8gJZi9qWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGeH-00000007gt7-1JOW;
	Tue, 18 Aug 2026 10:02:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGeE-00000007gsl-3p1E
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 10:02:24 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BIeo1061664
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:02:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gKtcZjbBOfHo3Kkb7BtMQ73HlCTfqy+fk/1E8Z1N6Xg=; b=mBJigU4sVcEo/i0B
	jSrWWvtdyhApq8UdbdXXExhZr5FQF8dPZULE0kY2hrihDqkDTI+sfFKSLs8eIlhN
	ouACxr9VBTgsIb1cWuziMGllA/Aai8zjDNQEcDllYglxezMNQFRUqLeI2CQZJF7z
	MvhRXssijPE2Ow3uhvLVfgWnTLB73T4U9gFJq7lbjSglMuJwst8a1Eiwex8QsiD3
	+Dy25i+R2fXUBUNnHaBSdK81HiKhdBoGqwVMsxQzG0WOryPeZQLNrMwMUwGgGiWC
	PgvA4cu2xjoZnvI7s+EDZPNVbmlkkVh3QWh+XkDySGsPm7sG70NhfQ2ayOnYuqom
	OshV9w==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4fvp1f1r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:02:21 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-744e789f00fso10906137.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 03:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787047341; x=1787652141; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gKtcZjbBOfHo3Kkb7BtMQ73HlCTfqy+fk/1E8Z1N6Xg=;
        b=Ee1+8hy0MTJap5FJ4QY/uWS+kuGX7FCB0cyUwFyOHJg7R/rJ2KAPx+XKPkQAP4ZZMX
         DXLGvMIJktsCqoCBY42aAKWyWCnjomdKz3ic2Kxu8xNFRJFsJMzxNTpzfsGFkRN5nyzg
         NAnd8Q+4SYMGtjAMopQS470xG4sq6THcs1RUSfW2z36CsjPD2rdvpcjz3PdaRl9qTLG/
         Hf5BHe/MD/emJMvlBH9ysbqcgmKfZc6Om2J0Tv0v8l3r00wdkGeRZwISTOmY5i/GpSkv
         ItcW9XlVl6KvjKtO3hHuPWIbCFBdm9GxmUh2y5HWtOdS3eDcsrHINREbR4KfXBTlXRZl
         iBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787047341; x=1787652141;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gKtcZjbBOfHo3Kkb7BtMQ73HlCTfqy+fk/1E8Z1N6Xg=;
        b=b4pGMQqvFwK/gKymkIxPJvxL8F0ik5CTkK7Ex+0RlM2xa5zGBbFqWGOO/PGhbJy9AY
         ygJN8f5zWN6QoHSH80MzMWb29uM5TQzRBObxZUBr92RMiv/DHfT55bPtsnQp8Kzc0OwC
         mcjQqj70eLHKkaN+WTWYtgdaQvzBmK9T5IlzsAI5Z+1o0Vm0dawBXHBnys//QA56XIGJ
         qKKFCCSUxsmW2pOtgygXEMo7NCUar5eP8wXlnKt8IMDg4CZ/R0VmzcO6lwAbXvbN54ou
         FPyiSEzN+XhE4K6QYOc9+/cXNPIRboNNafL2GYfYj00OBdcockCRFgrF6zG2jm3DaaPp
         5oww==
X-Forwarded-Encrypted: i=1; AHgh+RpD8QFC6HMzZOQ2oepC4oaCvvcSXy8AruKMjZBC10aweHqw3Pz0cOPV2ufGXZRjlqVPs9qN/TorP5M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVFs45ZhCEdOqqOcSZT21U+el/7xqK2Q5XxPRToU2E49nhbYwL
	nD40O1xrbwOhJovpTAXYNw0Xkt7S00EZmQ8F/QoWCVv1F/DTDZzUt6W0Rq9oMlb0hKU4UeRiqCC
	PYxLQO8yYHk3QzdY5I4g44mt1CqNMI+h+PaHkTlUNnJUkj8nUC1hHIY0ghXQOA4jHl4JI
X-Gm-Gg: AR+sD13rZCMAh6RDEKagiz10J/wAJ/8uVfYCh/gP+mWeEcPitcaJP8L4spH29jWsZvi
	XzoryP6WW0RHupXeHptS7xTqFElAuxKDQowuchJA1jgv4FhRnyHa6kAljcBVeDewqSMo0vjfsDb
	csod6LY6EwmDEpPSeObQATobXgI5W/AWqqMcLHRGA+JM+12ZNYEHYF4mduYTHlhotdnLUv7w/Rp
	R2CD/rrMa2gW70OoBmFfRUTdbSAfLq2DCkVEQCL60tgxBqWA0UzeEEV6DzU9iynb/bpUxXJz2br
	LY0dUwCO+JDwXNurN7I0uhSUguZY7qcGZR/yYc4iv0p5Bn90fFbh38ZLMq5jRSj+sivrkP1OfMg
	BkHTPXsLd7udmQn47qm0IvJ9i
X-Received: by 2002:a05:6102:5091:b0:72f:6669:286a with SMTP id ada2fe7eead31-76f2c540eb2mr2244164137.2.1787047341188;
        Tue, 18 Aug 2026 03:02:21 -0700 (PDT)
X-Received: by 2002:a05:6102:5091:b0:72f:6669:286a with SMTP id ada2fe7eead31-76f2c540eb2mr2244135137.2.1787047340715;
        Tue, 18 Aug 2026 03:02:20 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a3d8596d4csm1517213a12.22.2026.08.18.03.02.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 03:02:19 -0700 (PDT)
Message-ID: <c72378dd-edde-49c9-833f-d107f6573989@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 12:02:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/10] usb: chipidea: msm: keep the glue device
 runtime-active
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang
 <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
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
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-6-e5f93ea76ffa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-6-e5f93ea76ffa@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: KpozZ7YjlwDfKxtF8dPSnxHq6eny_0Dc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA3MyBTYWx0ZWRfX1XVp6ozxVy//
 ki26+8X/85JTgt6SFnr6plzOENqawCzIbb1mHJB0HqY9uz6DaJQ3ARPqWaSFSUlBErWVI6fWfV7
 +eNSxAzzYVdPdBh88fmiN3thYP28/wlddZmDQiwrVIskY9rbqZ/NkeczXHfZLP48a4bK53jP3lR
 yz98+VNf2WbxF0Lct2B5PEG2XcOMy00tX3G2VHt99JmYJraTIEhY9WD9NxKzGbDKXcux7Xq4hxr
 fOGKcClCsJycGpE57YRcebFOZFZnDqo/VfC08ZnUzWpgS7LT6EFykl/oKaoBmH1wpHEiUc9kFDS
 9K7zqxabyUSAYjm4DM4w5fbRJpRcArgYLfiPOQMGo8Fbrbn8O69reVyMunQ8YU/4Nt0x2A1tRuy
 1X4U+kHTemajdxKno880bNkuAD29bcgRYGmFDdPV4KYynaildpDCHHAEfif3L7LI4cjwU46t30p
 0M4fnbPVx1HfuqHBXQw==
X-Authority-Analysis: v=2.4 cv=K/IS2SWI c=1 sm=1 tr=0 ts=6a842dad cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=GzGGmIZ6zSJ6oW9ANs4A:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA3MyBTYWx0ZWRfXyjtGksRyckav
 VMLU8lBdFAX22hy0zFA4GSmqUBCv9GBQfhcZS286NG+XuLdBN/viqioUEx2E1esfGwNlLj4o/pn
 Yf1pp4HkFsqXsuFCBK/Qa7wh1/DG22U=
X-Proofpoint-GUID: KpozZ7YjlwDfKxtF8dPSnxHq6eny_0Dc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608180073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_030223_074171_37A774FA 
X-CRM114-Status: GOOD (  13.75  )
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

On 8/10/26 5:42 PM, Dmitry Baryshkov wrote:
> The msm chipidea glue enables runtime PM with pm_runtime_no_callbacks()
> and nothing pinning it active. Right after a successful probe the
> driver core's pm_request_idle() runtime-suspends the glue (the ci core
> child has runtime PM disabled, so it does not hold its parent), and
> when the glue sits in a power domain - the HSIC instances live in the
> USB_HS_HSIC GDSC on msm8974 - genpd then powers the domain off
> underneath the running controller. The EHCI register file reads back
> zeroes, an onboard hub's connect is never seen, and subsequent bus
> accesses into the unpowered block wedge the interconnect, eventually
> taking the whole SoC down.
> 
> Pin the glue runtime-active so the domain stays powered for the
> lifetime of the controller. Proper low-power handling can later be
> built on the child's runtime PM together with the HSIC wakeup
> interrupt.
> 
> Fixes: 2d0cdcc5a0e4 ("USB: gadget: Implement runtime PM for MSM bus glue driver")
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

FWIW downstream seems to implement "real" runpm, so perhaps your
agent can have some fun with that

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
