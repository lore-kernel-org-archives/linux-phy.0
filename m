Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E233606A32E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 10:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NAh2NK2t;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=js1DapgZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=EPBiYQwN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8XVBAHIJDJMFzGOomFhiHGlps9KVXoNft99SpbST28=; b=NAh2NK2tOQWzxr
	XzZVaPZiTECEECZQVjZDzmjF7h1WMN7TJPGJ4/eo7EIXfaGVZX8YEsOFppFxfczkFX+ACkQRlYIdO
	6DiAnG8z3Ksl2jlLDbPeCOjPl/AyNMHV2D8VZUoqitjgM5JMB3A6CrygFmVms82rI47SjkiLcJnpG
	etk5XRYVUXrW0/EhOkS1hg329zsQBENzI3N7lALyF7vGdRZ0UnrH5Hlk+AQUSkOaTxSItHVJ//Pdo
	vGhumW5sVRHmWocjzhUmC8TWiJ/C7YlSxaMe+nAQ/1OMM/v2JhHUNVQz3WOxST26B/LumhPAyRDwz
	V1t0XP9sn0KO0+LMiD0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ7US-00000009U2S-1Ys1;
	Tue, 20 Oct 2026 10:54:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ7UP-00000009U27-2utO
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 10:54:42 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69K8LoZY620283
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 10:54:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mgoAan2vCyGJABNHaoJvLyW9+0/fp2TVmgm949Wdink=; b=js1DapgZNnp7iKP8
	5ih505rejGgluNIme8rnZqZkDMhMxxe/Wo4KbxT1/vBmQAAYqE7ZMQmGXt3wQ7XG
	kWBjSv53TWE4GGkrZQPcWYcPZVTgdBcTqyTKyQA8k8OEXkjWj/ksws3nkULqAnPd
	tS9E9gSDdWVOAsuqfRkEH3hgHYmTDjuXqhuENmrA+Jfno4ZUH13rPyDWoiyKmFQ0
	6ccMgPEfuGK5qprGAkJXfGVXcv3EQoJFFhBJHufKIe0Uj9olhG1fSwInSd2HWzbj
	ZwHz99OJ3JMIykgfB+H0iH+xELHT8FYFv2KcpjfXxeXXdYoVFg1wbCpUz6i+QWRv
	/VGMew==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5nt294-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 10:54:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-91bf35c4c78so5474946d6.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 03:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792493680; x=1793098480; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mgoAan2vCyGJABNHaoJvLyW9+0/fp2TVmgm949Wdink=;
        b=EPBiYQwN+0e4UiTaeEVzpvbzZbsbitZN+GWj1ipFunRC+ljyVbXdvNFJmbJkmcjfa4
         n+Ik9wLBhQ/4gve8DuoEGq8BM+qFBHiZqxj0frbjsrRmIgaKc6nVkHo6cRJL6zByVeLe
         VtbfCZjQbCnlLLV7osjCzYorfL8h/eqg0iRDbujw++xCImcvu133loHT5CyiNEdH1duo
         WtRDtzXEWb/bRpFOxX1jx/tk0P9iJVuv56WYXhR0iSqbbZ3tyYo/3twf7O1YJyIhDBhP
         QyXJsvgA6B9Zkjtmhr5zMhAF6oC/5NiNUE8m1aiEUggwcMnZ/Jp8dsccjjY7nb77m0X5
         M7NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792493680; x=1793098480;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mgoAan2vCyGJABNHaoJvLyW9+0/fp2TVmgm949Wdink=;
        b=ilZRAYvLaFaKowJzDSs7zqyEC1pae1EK8R0G3xKyNGtJxmzdbqZZHMZehakBZBUwZi
         Y+3Cu2K2eZe7j8MklktOugtCQUsxUtf43PYRvfHBA9XI7onZrCSa+WbXuw+QP3YxUXTa
         a/LVDK+HHx35aafElomeY7sW0iC5OmABXGUzYQarIlk/Zih5pCo6qU0nFr4t9/SgYaBp
         lso6NLZuP+tJQYlbBHJipJKt/ZQjvncoVbdOIfbswyeXjnpSNRSqUCe95HTOq9VVsB3R
         HeJy4Er8HFXWuOAde1Gg55EdFpP20Mj1rQVGPx/JD+zcHtAviIJCf+X84Dujrcz+GeIn
         Z/qA==
X-Forwarded-Encrypted: i=1; AKwUvByC4AX6e7i8kXr6AqJkdcae5E9o/XbHBtC9xgaJbH8+ToLHQ9/Zn9l7dyNzU/Mmo4J0118dx3inDU4=@lists.infradead.org
X-Gm-Message-State: AFq9FYJCP8MTy/BQQr3tRvBcafdN3DvLtGwpqyVB6qZAIblDjHpYqfrr
	Afy41vv5aR3D3jdUENu4zEtCtmRG5jzTrt2uqeuEEDl9IPdhdM9DOyvisSxiaXJ9InOk1T7FGP2
	85s7GjWT8wTL1WvLVRQ1jjukC7xN+q3sZEcEukwfcdxVUa0AWIT+Z7af8nRUv+Bfpcj8t
X-Gm-Gg: AYBFou0rHqeImbd3emx2zgqFe89Ms+zoKtRUKvnF5SOrRufVWBI6XtAng7Vnw95ZJCn
	UQQtC/7kBKo2HJiIblrOy6uMjjr9ci04Jzl9bQdxnZGsm6fe8zY5EVe1B53yTa1wGc08Lpgxoq5
	KrekPBLZTNtjF2nVJM4Zw8rS0qc5Nh8KL0WDuJ/wuYqAS/6cll09p8r1FW93rXeqh882RJ/ORDc
	cHMiARoQdcNzTMiAtAr7CynDuPAkAR3NrJC9KFITr7FH9ynNe2nxPB67EA0iKuy3TV/gsL4T1z8
	p9xwVumoXW7mSBwVRTkdqk00QI3Rbs6gBY8Ump5msCUPyxXOYwjvi34Onw6zCdOelRJFLzxkC5C
	Anbj5G5WSWit4VVhR19DVjQ==
X-Received: by 2002:a05:622a:134f:b0:536:91cc:465b with SMTP id d75a77b69052e-53691cc4bb3mr8061031cf.3.1792493679917;
        Tue, 20 Oct 2026 03:54:39 -0700 (PDT)
X-Received: by 2002:a05:622a:134f:b0:536:91cc:465b with SMTP id d75a77b69052e-53691cc4bb3mr8060801cf.3.1792493679378;
        Tue, 20 Oct 2026 03:54:39 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4091eb4ba6sm465672066b.75.2026.10.20.03.54.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 03:54:38 -0700 (PDT)
Message-ID: <a0098b0b-85d8-4da2-b41b-7e9e73bc70de@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 12:54:36 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
 <20261009-phy-v6-6-50408e45bcc1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261009-phy-v6-6-50408e45bcc1@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA0MyBTYWx0ZWRfX0DUcQVKjTRGM
 qN2fCZYgO9n+axZ0LMjmUJp+KKbCqanFHXd47h9pVGgkspYCAO+E5y0jz4RmS6z++SpvDpzuD7u
 KN6E2TPtWpjNAMoSvdcHwHQ4Yp6gHhk=
X-Proofpoint-GUID: S9AOESL6zqiL55lEEH0-9KV7NLqOdmCl
X-Proofpoint-ORIG-GUID: S9AOESL6zqiL55lEEH0-9KV7NLqOdmCl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA0MyBTYWx0ZWRfX0iL7eCIj8rMW
 OQHRJp42Hq5nYBYPRO1wWdOCERluxMbFwQZgEMKzt0cyMAG4Wa5nOtZhsxhmTWVmfK1EyidFjq+
 7K0CWDQPZx6zBQkCkWAanGlMer3bIeVkawuyhnPyDUk7eO2u8kubp29bP8BntHqHW/pd2gDR3t4
 gkPp2DO1tw23muby3yU3cm7eSgKjDffSPrm4r3o/gMLFszki2/TL0uGV6OXil0a0YbGWh6egYw0
 ln4b69s4IzmTabaF9a+Aab75wxfKI7rQo3TErY6uTTeEl3DrVHhD1mM73iW7JbW1aARvi8I5+9a
 vOs6n8ixnpRugGTAq4uxMtBEgHFC3xS/oi9dkC+9bm3z4JRfm0BY3v46RqfJrNWm5lzsiuQR237
 CxHLp0j51cajb2R8DEQeiNqS1HDWPHtuppFInc8V2tecM7MLiMi/aPxoh2/XZz9x0geEdbTDJZ5
 DmfIHdIF40+b/43+00A==
X-Authority-Analysis: v=2.4 cv=TcsDJhQh c=1 sm=1 tr=0 ts=6ad74870 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=vWphLq9OX84qfFS8ZdsA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_01,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_035441_855309_CF9845C6 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/9/26 6:50 AM, Varadarajan Narayanan wrote:
> Add the 6 nm SNPS femto USB2 PHY configuration needed by IPQ9650. The PHYs
> on this SoC require a dedicated init sequence and override parameters
> before they can be enabled.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
