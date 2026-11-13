Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CBB606A327
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 12:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hUouhdmR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=TEFiQ7Cg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KDm/UVKq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=apf2UDib/983I6a3pTFUcXvOjZKdhCgt9fpNpr2eBk0=; b=hUouhdmRjcVebrX4GLRsBdBamY
	GYY1nlPIWqyWPq81dfgQkvzCtMSL2V6rEW3dhZLivsq7FT4/+sJ09laKemS1sScG0l7nyiJ7osSrS
	IS9E5JVegAjtXTL6enUz1btbkHQRa+izDiUR4d7wfLdsN2bUzSsaxpGX3I/ZnkXcjxLmXS3jm7BQQ
	MkYnomZvu5ce6IMoYW1OPkPWaUCrFYJjV1gKLk1R3FMBkvfKKPMgEtYosoFogdI9ybcLxz0fqyEGM
	KFbuM3XDCb3tGRZRN9Q2q22++E0ZgD36y+OKha9MoDirdxnyaMHnpdCwNZlHLDKJlOch9UIGcdmfg
	oGIavXXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRq7i-0000000CfWK-0Iei;
	Fri, 13 Nov 2026 12:11:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRq7b-0000000CfTb-1WHW
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 12:11:16 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADC2BHu3073153
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 12:11:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/NqXXavtqWESRvkrCUGDpDtfe0DY5TPqAKh7ZVcfS7g=; b=TEFiQ7CgOeSRnQW/
	Se5AoZ7dU6cjjcaKCcUCdHvC6glfYOpUgtIi46FqA8lPXUVJgojFjfTr5Twfu4Mp
	CQbbN6g6pHf3PwdXgHahKEHyyYCJvFy3uK1ZrPlHyfhXCDZPXP7l2zI3/X6YRhr9
	P4cuWfILX/CScAZSIlXC+90djbPnxUYlMfurTNDWM2n9N5nRSr3Zm+vlX3pnFWhZ
	As8+Ov7kfmMtzFJB0joQo73uFu88E+LeiTT/JhxBaznhr2QHYE+waIvCpoMzvaU1
	mUm3VHg+zCXtMTkhyvJzq0nOEheAZ9Jegsrr/fM1r+Ndg83P6CJP2LKdzamirrDX
	+ZsSTg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwg1bbx1j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 12:11:07 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5edc82ecc78so47368e0c.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 04:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794571862; x=1795176662; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/NqXXavtqWESRvkrCUGDpDtfe0DY5TPqAKh7ZVcfS7g=;
        b=KDm/UVKqofpwxXNhr3fXyTXt5sSvIj4IpDnNUy9Ge5LXDbkOHxcmi9bb7t9/QpPfuT
         ql+T5R/5uBXh2klK352fS3kb6kix+dnpEzmW6DuCydyZscGn74kns883tTzGaiB4s1kh
         NXXXlH7L4AzKm8CCmrR+1bLjeCLJXk/lK84wUOVes1clpumApxYohEhQsLA3JqSwEPQo
         nZax2XUyweFl+SqR1Xz1ja/7YAqkt9ykIF89e3ryj3Jvvo7LtTFDt3K3Ua07AiYRVy2r
         vDK5z1HZJpaMfvy3totiUqDJWR9sTOcFx753GrZw6/tjMAwHgpSkzisp1/4foKCR4TsG
         AKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794571862; x=1795176662;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/NqXXavtqWESRvkrCUGDpDtfe0DY5TPqAKh7ZVcfS7g=;
        b=go9iKDLjniYS9bhkNeRf9WztHpRLu4DRxqU42nxbXy/asQZyxDG7Z3BVI54ua0CVGK
         /BH8j6/f5rH+CfptzXie+v6n/uSgLOtwnoBI3Q3QnaUZvM+XAh4yNn/6FCAIsxACKnLj
         +G7rx+o9d5jVhCiR6TxexnqEc0nMHKiy8hkXRfRtTYZcj5DgdKJvuhkd5sJeY6lU+ViV
         15JkV/LfZnevRmXUrYSc6Es9+NlVLxVoaCSxyu9NxUPZFyVzYCmUZN7nnuW/S2pC+M/f
         ggregyGlDBEnjIusnnkBdjXrU6VHbyL95KTFjh3udYePDqktRgzdEaHFSsi5lPJsCNM7
         Offw==
X-Forwarded-Encrypted: i=1; AL+hErErckhynu5QOBNNY/UQvE9A9xM+VUmnEeBuAU5DphQjgSDyKXuqFvNIDbotSAZXC4YdkzArCdMhiDM=@lists.infradead.org
X-Gm-Message-State: APuU4Z9Tb4b4JcFx6bXCLYkrEGOUvKfBsWcgs4igs4RpkEMXg57fTzVt
	7hzo2QbQvyBz4rz9SjHvTdQ1yLu8gal0b0b4G0KRyHOy07/2xUFBgWdOAYFpb90CwAfLBldZ1jY
	UhIoezZbYo8fhwc5+QsnsKi7SKcgXvVve970gw/ndXkSMUGr/rE961yntvYGHrerwr3r0
X-Gm-Gg: AYBFou0Q5Tgw988cJuWxZk0y+xhT+Ln3oO3OpN2dbASCuwX+eBk6Xa2w5qEQBlhcyOo
	/+9rPT8aohjXBcMfXVSfHnRbkpDlHs6E+Fkfi0HkPpuLPjWbdOVdRArCG6L1h6LpTkn2u3jiXzE
	A1LUmKGNAKUjeaztrLavd5fVGAICd0z6WAokWCS/EG8ns3uMlK0EGkSmPY3sp7vGjoJHIcdoOtm
	1T/FJw7JmUBAhr4EXzoqigSFlx3KZemSa2ZCo8KZnIBUvKmGIWRfBVSXKzXeo7rGOqbkd99gL5N
	XCsw80SKaLZPNMNH2xHe55R0sqH4zNuDuhfSoHorqfo5tQP6NuvHkx1uZwKp8lYD+QMOEFhw7Xa
	CQ+2wOWwSd+G6Yf5oDBHl7KCYYxY80l84SQ99R+2fiXnY2Uk1FgZxEwiO8iIA9HlCDpdx7XM=
X-Received: by 2002:a05:6122:6c09:b0:5ec:abdc:bb72 with SMTP id 71dfb90a1353d-5ee346b6663mr738705e0c.2.1794571861673;
        Fri, 13 Nov 2026 04:11:01 -0800 (PST)
X-Received: by 2002:a05:6122:6c09:b0:5ec:abdc:bb72 with SMTP id 71dfb90a1353d-5ee346b6663mr738699e0c.2.1794571861279;
        Fri, 13 Nov 2026 04:11:01 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c5095b56df7sm86814566b.47.2026.11.13.04.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2026 04:11:00 -0800 (PST)
Message-ID: <03d75b49-dea4-4736-a662-27ef64682157@oss.qualcomm.com>
Date: Fri, 13 Nov 2026 13:10:53 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/17] arm64: dts: qcom: Add Samsung Galaxy XR
To: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Thomas Gleixner <tglx@kernel.org>, Radu Rendec <radu@rendec.net>,
        Lee Jones <lee@kernel.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Bart Van Assche <bvanassche@acm.org>, Bean Huo <beanhuo@micron.com>,
        Stanley Jhu <stanleyjhu@google.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
 <20261109-halliday-dts-v1-17-289114ab8197@gmail.com>
 <3ddaacfd-59c0-4d87-9b8c-2caa85143393@oss.qualcomm.com>
 <20261109170407.2073295-1-lightofmysoul@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261109170407.2073295-1-lightofmysoul@gmail.com>
X-Authority-Analysis: v=2.4 cv=c6Q+0h9l c=1 sm=1 tr=0 ts=6af6fe5b cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VS6XN_di3_qKZAQ5k78A:9 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: HNhSxAI6ktOd1i0K7uvx1PoJRmwfly-x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDA0OCBTYWx0ZWRfX/5TYeQAasyJH
 gPUixvbXBUyJo/5ylQlbMFShyYFYjBiFhCgJqRsEIXhsDMciJady3nHomlVJDtmjXSvqK9dYzZe
 jm5jKalasH1nvkxgqxpun4hH6QUOsOLSOAHJTx8Xz1T0+5TO9qPMY9wIdnDYbePmh0O9dNUQUp+
 rf0tg+NhC/VbhJ0lwnGLw3PAkC5GBiDKUjM7oPXn5SqCbyxws5Xfs42SG8hMhNRmg+xkq2omsQx
 tgryx/UOzU1mmFa/rVWRzXETJT/zOumHIjrVnkn4m5troaW0JIpZh6gsrzozf9LwJiNFWWQQ/+6
 C6JSHrG5gV5lWtWEXyKR+9IVn53mv/qE5MWowmipqC4Sw59R0eUyWwJbKQXtZYmkJU7Bhzo1AtY
 iPHPOjuxfrrENLHIpADa8V9dcsVPEp85/lw6vB20psyM3HFj4OaJdKCJmFhXdz4C09rVIHdtKuh
 sdtDHZyILoeK7phX5DA==
X-Proofpoint-ORIG-GUID: HNhSxAI6ktOd1i0K7uvx1PoJRmwfly-x
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDA0OCBTYWx0ZWRfXyNwci0CYi5c6
 +C9pw9XqH2l4QAnz+CL8hn8pkrpt0Y1wfJA8oEOnVCJgk76Gt8VpZ47t1TdpdMXwLGu1SnaDcuY
 HC8Cw3DthubHomjrSeoLhIZYKJfao5Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_04,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_041112_917356_C92C7B35 
X-CRM114-Status: GOOD (  12.10  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/9/26 6:04 PM, Stanislav Aleksandrov wrote:
> On 09/11/2026 16:12, Konrad Dybcio wrote:
>> On 11/9/26 1:33 AM, Stanislav Aleksandrov wrote:
>>> +&usb_1 {
>>> +	dr_mode = "peripheral";
>>> +	maximum-speed = "high-speed";
>>> +	qcom,select-utmi-as-pipe-clk;
>>
>> Is there no superspeed / dp altmode in hardware?
> 
> The headset supports USB SuperSpeed and DisplayPort via its USB Type-C
> port, I just haven't brought them up yet. It seems we need a new driver
> for the Type-C controller.

OK, we can do that incrememntally

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
