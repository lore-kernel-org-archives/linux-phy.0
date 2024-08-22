Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E71CC3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHs3xSkw9hd3OHVPPI4mXo8VGXz4+nGWMIif4mrqDq8=; b=srn+BSW9fqrcZ4
	jJgRYSxegfqb5GooefnSAdGMfJP29epgls8SAK1vO6HUx/4b9VprX+Il8RAa/66zMIf00rQGJDL0X
	yA5UCiUbou4OvERveArebdEk/NkJzZJmwelXABOQN9zz3o3HvJlMrW62KOIH0lqxBy0tLrnkgDUMn
	f9aGSgnCKKREMWT7WgxBg2d/kf5Ez065lflyXlPN91YOLb1PHAbzv1zL9mu6r4Zu4G3RcxCIy/8kJ
	5+zB3XV/azRt/hOWLz1KelFKWBoN9DdUuJfD96prA9IizMuUzlkvIihI6x2b3VzSCc5MamzJJubUI
	jw8JOmpR/doEhqQbWiHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5BU-0000000CS8u-0GHo;
	Thu, 22 Aug 2024 10:36:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5Aa-0000000CRyG-3bS4
	for linux-phy@bombadil.infradead.org;
	Thu, 22 Aug 2024 10:35:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SlGOucvSgDtSQ9wwuPYvLZJURsS0vqWONUgEBulumIA=; b=ICHZlmnHvYUwT4oauoznUwGLff
	nZhfJGuPt7LHeY73/O/rA/OE/k7NL7N99pxqYM7ojJSyDMO32G4ii66xBAJ9uuu30SqBPMa/eNtn/
	6FTS+jtDgKqirJEDYJw02lGdEdCVsSmD3dGnIyqBzEk4Gbyv5tjaqY9wRP2fj49q2Mn7qeHD2iidc
	BYgKQee+0fZuIoxq9UcJgM8BhlcPddRxjXneJeg1Y5E3wz/8a7S74FD8W/vnApNt2Jn9259K8OApl
	Ubr/Sh6v29S8el4JNxejCTvS1a2pt4Z95ncYFVjWeYSQj/0U61go9ZzbQQjGm9ezdlzteQhbApjU7
	JlK3JpZQ==;
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5AW-00000009uMI-2iTM
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 10:35:55 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-690b6cbce11so6637827b3.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 03:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724322947; x=1724927747; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SlGOucvSgDtSQ9wwuPYvLZJURsS0vqWONUgEBulumIA=;
        b=Wvy+ntJh++GwNl0z8VbWxrFHxsSWLhuqAPpgm74aAsKla4xiFlYNurE6Zw57mgG+mu
         PRw7x8+NNwPNsj+ETQAkJ5ONb1ezR0/fHJgytAZtUc02nMNEq6Z89zjgE51IMwp1DyVv
         XKg0qn13Q+UqChxfDzguNOmiZ2B9GoqhsPAMQVL5Wa9ADRCH6w0jW0ZNdS1Eci508bW2
         Tvuc4g67SVu90PBvQbl0e31aqFBf060M12O1wCYR5Mg0m8UsP6Rl7UwqGeRHJfrCsp92
         l7PVj3/uonaoMOp4S7R3Ilw350p8TYVxr8Z5V7ksfkTGenAgnh+MYNTg5Fw1C/ao1tzi
         uymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724322947; x=1724927747;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SlGOucvSgDtSQ9wwuPYvLZJURsS0vqWONUgEBulumIA=;
        b=JOxujdLUONbezyryCd6gCCDPmJd3BnNe612CTEZXYZF2i+jqQGWU1hLZFGTC3dmHKm
         +1ym4qNw23JzOSxD4fG1yApCzSETX/Dxmo5IyLulYL1G9XP5mbNHSdqR0mteERxTjB2v
         5HIwT7D6UzhDqaOfF4sreG2uQF6HQNZIVHsArBlPPJ/crnsl9WMqJDcwGoBPhrxt8XbV
         HEUzvR+R8A4eM2LNChsxGlL75b/XOBFSpN0pbl/3acAn0T4aAkemAVcgD+/bw4kPnEFd
         fqz9MzpVyG6z6hOngqiBdPrXd7FJi16A/tSo2U46fVjNGqSJlsWs9oP5BrChxL0qbEoW
         Aqxg==
X-Forwarded-Encrypted: i=1; AJvYcCXDpYpVwyrSHjc7D85tKAJjn06SJ9LmkeJ3Uxh6EzZrYLOgvxcWFob/HApopgsug7i8G6j5hzSeg7c=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJiXrdu0/FOU7H+qBQqgZ/yb9Gd+nm/yUXizjD4q9fm70SdmN9
	rExN3++lZq15T49xPm23TP2JBk5S/XdpB7H9Uo0QEsJD7GMVW4/47weky5AUQxFyaa98pLZFc3t
	CewQMXwIRr26IjyoiBjm+C7EHq3Q=
X-Google-Smtp-Source: AGHT+IG6bWOYEN2J3a92yRl68xajoh4axN8so4QLGPSZQq9BbWbUuCUj+XIS5c+xCT5cUK9sMjHDEY9agZS5+hY0dUI=
X-Received: by 2002:a05:690c:3744:b0:6ad:219a:b687 with SMTP id
 00721157ae682-6c3d5ecc2d0mr18942827b3.39.1724322947525; Thu, 22 Aug 2024
 03:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240821215357.20224-1-ilordash02@gmail.com> <thpryn4unrebkvx4a7jhqmxt5ntmog2gcw3ekh6h72jews4een@b43tsg7poegn>
In-Reply-To: <thpryn4unrebkvx4a7jhqmxt5ntmog2gcw3ekh6h72jews4een@b43tsg7poegn>
From: Ilya Orazov <ilordash02@gmail.com>
Date: Thu, 22 Aug 2024 13:35:37 +0300
Message-ID: <CAGCz5H=vos9sh_ts_ExH8dQSnicFyN+=TfWmBbnqS8egdD+k=Q@mail.gmail.com>
Subject: Re: [PATCH v3 0/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_113553_334147_9E5D3693 
X-CRM114-Status: GOOD (  13.11  )
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

On Thu, 22 Aug 2024 at 10:09, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Aug 22, 2024 at 12:53:56AM +0300, Ilya Orazov wrote:
> > Hi all,
> >
> > As suggested in the previous email conversation on this patch, I am
> > sending this new version as a standalone email. I hope this approach
> > makes it easier to review and keeps the conversation history clearer.
>
> Where was it suggested?
>
> Best regards,
> Krzysztof
>

Hi Krzysztof,

Conor suggested that I should not send new versions of the patch as
replies in his mail [0]. So, I sent the new one as a separate email.

0- https://lore.kernel.org/all/20240809-guru-tassel-84a14486a596@spud/

-- 
Best regards,
Ilya Orazov

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
